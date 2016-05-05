public class RandomContactFactory {
    public static list<Contact> generateRandomContacts (integer i, string str){
        list<Contact> lstCon = new list<Contact>();
        for(integer n = 1; n<=i; n++){
            lstCon.add(new Contact(lastname = str, firstname = 'Rajeev ' + n));
        }
        return lstCon;
    }
}