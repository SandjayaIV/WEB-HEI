package hei.devweb.contactlist.daos;

import hei.devweb.contactlist.daos.impl.ContactDaoImpl;
import hei.devweb.contactlist.daos.impl.DataSourceProvider;
import hei.devweb.contactlist.pojos.Contact;
import org.assertj.core.api.Assertions;
import org.assertj.core.groups.Tuple;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class ContactDaoImplTest {
    ContactDao contactDao = new ContactDaoImpl();

    @Before
        public void initDb() throws Exception{
            try (Connection connection = DataSourceProvider.getDataSource().getConnection();
                 Statement stmt = connection.createStatement()) {
                stmt.executeUpdate("DELETE FROM contact");
                stmt.executeUpdate("INSERT INTO `contact`(`idcontact`,`firstname`,`lastname`,`email`,`phone`,`preferred`) VALUES (1,'stan','vallet','a@a.fr','0123456789',true)");
                stmt.executeUpdate("INSERT INTO `contact`(`idcontact`,`firstname`,`lastname`,`email`,`phone`,`preferred`) VALUES (2,'alb','vallet','c@c.fr','0123456780',true)");
                stmt.executeUpdate("INSERT INTO `contact`(`idcontact`,`firstname`,`lastname`,`email`,`phone`,`preferred`) VALUES (3,'max','vallet','c@c.fr','0123456781',true)");
            }
        }

    @Test
    public void shouldListContact(){
        //WHEN
        List<Contact> contacts = contactDao.listContacts();
        //THEN
        Assertions.assertThat(contacts).hasSize(3);
        Assertions.assertThat(contacts).extracting("idcontact","firstname","lastname","email","phone","preferred").containsOnly(
                Tuple.tuple(1,"stan","vallet","a@a.fr","0123456789",true),
                Tuple.tuple(2,"alb","vallet","c@c.fr","0123456780",true),
                Tuple.tuple(3,"max","vallet","c@c.fr","0123456781",true));
    }

    @Test
    public void shouldAddContact() throws Exception{
        //WHEN
        Contact contact = new Contact("Aurélie", "DUPONT", "01.02.03.04.05", "aurelie@dupont.fr", false);
        contactDao.addContact(contact);
        //THEN
        try (Connection connection = DataSourceProvider.getDataSource().getConnection();
             Statement stmt = connection.createStatement()) {
            try (ResultSet rs = stmt.executeQuery("SELECT * FROM contact WHERE firstname = 'Aurélie'")) {
                assertThat(rs.next()).isTrue();
                assertThat(rs.getInt("idcontact")).isGreaterThan(3);
                assertThat(rs.getString("firstname")).isEqualTo("Aurélie");
                assertThat(rs.getString("lastname")).isEqualTo("DUPONT");
                assertThat(rs.getString("phone")).isEqualTo("01.02.03.04.05");
                assertThat(rs.getString("email")).isEqualTo("aurelie@dupont.fr");
                assertThat(rs.getBoolean("preferred")).isEqualTo(false);

                assertThat(rs.next()).isFalse();
            }
        }
    }
}




