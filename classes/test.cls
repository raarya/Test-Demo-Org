public class test{
public static void get()
{
    list<student__c> stu = [select class__r.id from student__c where age__c = 25];
    system.debug('name');
    for(student__c s : stu)
    {
    class__c cls = [select name from class__c where id =:s.class__r.id];
        system.debug('name of class' +cls.name);
    }
}
}