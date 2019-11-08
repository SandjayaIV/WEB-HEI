package hei.devweb.contactlist.services;

import hei.devweb.contactlist.daos.ContactDao;
import hei.devweb.contactlist.pojos.Contact;

import java.util.List;

public class ContactService implements ContactDao {
    private static class ContactServiceHolder {
        private static ContactService instance = new ContactService();
    }

    public static ContactService getInstance() {
        return ContactServiceHolder.instance;
    }

    private ContactService() {

    }

    @Override
    public List<Contact> listContacts() {
        return null;
    }

    @Override
    public void addContact(Contact contact) {

    }
}
