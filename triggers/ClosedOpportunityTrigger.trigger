trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    list<Task> lstT = new list<Task>();
    for(Opportunity opp : trigger.new){
        if((opp.StageName == 'Closed Won' && Trigger.IsInsert) || (opp.StageName == 'Closed Won' && Trigger.IsUpdate && Trigger.oldMap.get(opp.ID).StageName != 'Closed Won')){
            lstT.add(new Task(subject ='Follow Up Test Task', whatId = opp.Id ));
        }    
    }
    insert lstT;
}