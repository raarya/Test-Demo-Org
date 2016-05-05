public class ContactAndLeadSearch{
    public static list<list<SObject>> searchContactsAndLeads(String LFName){
        list<SObject> lstIns = new list<SObject>();
        lstIns.add(new Contact(lastname = 'Smith'));
        lstIns.add(new Lead(firstname = 'Sarutobi', lastname = 'Smith', company = 'XYZ'));
        insert lstIns;
        list<list<SObject>> lst = [FIND :LFName IN NAME FIELDS RETURNING LEAD(ID, NAME), CONTACT(ID, NAME)];
        return lst;
    }
}