public class NewCaseListController {
    public list<case> getNewCases(){
        list<Case> lstCase = [select id,CaseNumber from case where status = 'New'];
        return lstCase;
    }
}