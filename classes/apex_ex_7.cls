public class apex_ex_7{
	public static void IDs(ID cid)
	{
		
        
        account acc = [select ID,Contact_IDs__c from account where name = 'appirio'];
        system.debug('1 is here');
        String checkIDs = acc.Contact_IDs__c;
        If (acc.Contact_IDs__c == null)
        {
        String IDs = '';
        list<contact> con = [select ID from contact where account.name = 'appirio'];
        for (contact co : con)
        	{
        	IDs = IDs + co.ID + ',';
            }
        acc.Contact_IDs__c = IDs;
        system.debug(+acc);
        
        }
        else
        {
        	String conID = cid;
            boolean bol = checkIDs.contains(conID);
            system.debug('checked and it is there');
            If (!bol)
            {
                system.debug('checked and it is not there');
            checkIDs = checkIDs + conID;
            acc.Contact_IDs__c = checkIDs;    
            }
        }
        update acc;
	}
}