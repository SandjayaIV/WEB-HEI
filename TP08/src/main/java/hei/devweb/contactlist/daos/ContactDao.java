package hei.devweb.contactlist.daos;

import hei.devweb.contactlist.pojos.Contact;

import java.util.List;

public interface ContactDao {
    List<Contact> listContacts();
    void addContact(Contact contact);

}
