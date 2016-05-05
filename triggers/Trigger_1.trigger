trigger Trigger_1 on Contact (before insert, before update) {
String mp;
    for(contact con : trigger.new)
{
    mp = con.subjects__c;
    if(mp != null && mp.contains('Hindi'))
    {
    con.subjects__c.addError('U cannot update the teacher record as he/she teaches hindi');
    }
}
}