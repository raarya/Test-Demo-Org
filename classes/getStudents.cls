public class getStudents{
public static list<student__c> sretrieve (ID cid)
{
Class__c cl= new Class__c();
    cl.ID = cid;
list<student__c> stu = [select  name from student__c where class__r.ID =: cl.ID];
    return stu;
}
}