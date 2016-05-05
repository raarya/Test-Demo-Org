public class ContactSearch{
    public static list<Contact> searchForContacts(String ConLastName, String PCode){
        Contact[] con = [select id, name from contact where MailingPostalCode =: PCode and LastName =: ConLastName];
        return con;
    }
}