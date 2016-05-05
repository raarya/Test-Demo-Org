trigger Trigger_3 on Student__c (before insert) {

    for (student__c stu : Trigger.new)
    {
        ID cid = stu.class__c;
 
        class__c cls = [select max_size__c, number_of_students__c from class__c where id =:cid];
        if(cls.number_of_students__c >= cls.max_size__c)
        {
        stu.adderror('the max count count for the assigned class has already reached, try some other class');
        }
    }
}