trigger Trigger_2 on Class__c (before delete) {
for(class__c cls : Trigger.old)

{
list<student__c> stu= [select sex__c from student__c where class__r.Id =:cls.Id];
for(student__c s : stu)
{
String sex = s.sex__c;
    If(sex == 'Female' && sex!= null)
    {
    cls.addError('atleast 1 student is female');
    }
}
    
    }
}