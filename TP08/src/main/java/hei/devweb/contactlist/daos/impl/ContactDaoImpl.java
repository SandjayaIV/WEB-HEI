package hei.devweb.contactlist.daos.impl;

import hei.devweb.contactlist.daos.ContactDao;
import hei.devweb.contactlist.pojos.Contact;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactDaoImpl implements ContactDao {
    @Override
    public List<Contact> listContacts(){
        List<Contact> contacts = new ArrayList<>();
        try(Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (Statement statement = connection.createStatement()) {
                try(ResultSet resultSet = statement.executeQuery("SELECT * FROM contact ORDER BY lastname, firstname;")) {
                    while (resultSet.next()) {
                        Contact genre = new Contact(
                                resultSet.getInt("idcontact"),
                                resultSet.getString("firstname"),
                                resultSet.getString("lastname"),
                                resultSet.getString("phone"),
                                resultSet.getString("email"),
                                resultSet.getBoolean("preferred")
                        );
                        contacts.add(genre);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contacts;
    }

    @Override
    public void addContact(Contact contact) {
        List<Contact> contacts = new ArrayList<>();
        try(Connection connection = DataSourceProvider.getDataSource().getConnection()) {
            try (Statement statement = connection.createStatement()) {
                try(ResultSet resultSet = statement.executeQuery("INSERT INTO contact(firstname, lastname, phone, email, preferred) VALUES('Aurélie', 'DUPONT', '01.02.03.04.05', 'aurelie@dupont.fr', false);")) {
                    while (resultSet.next()) {
                        Contact contact = new Contact(
                                resultSet.getInt("idcontact"),
                                resultSet.getString("firstname"),
                                resultSet.getString("lastname"),
                                resultSet.getString("phone"),
                                resultSet.getString("email"),
                                resultSet.getBoolean("preferred")
                        );
                        contacts.add(contact);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    }

