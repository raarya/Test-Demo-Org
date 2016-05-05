trigger trigger_4 on Student__c (after insert) {
for (student__c stu : trigger.new)
{
class__c cls = [select my_count__c from class__c where id =: stu.class__c];
    cls.my_count__c++;
    update cls;
}
}