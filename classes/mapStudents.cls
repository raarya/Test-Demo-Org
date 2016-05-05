public class mapStudents{
public Map<String, Set<ID>> mapStudent()
{
Map<String, Set<ID>> ms = new Map<String, Set<ID>>();
list<class__c> cls = [select name from class__c];
for (class__c clas : cls)
{
set<ID> sid =  new set<ID>();
    list <student__c> st = [select ID from student__c where class__r.name =: clas.name];
    for (student__c stu : st)
    {
        sid.add(stu.ID);

    }
ms.put(clas.name,sid);
}
return ms;
}
}