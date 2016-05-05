trigger trigger_5 on Opportunity (before update) {
//list<opportunity> final_op = new list<opportunity>();
    for(opportunity op : trigger.new)
{
opportunity old_op = trigger.oldmap.get(op.id);
    if (old_op.StageName != 'Closed Won' && old_op.StageName != 'Closed Lost')
    	{
    	if(op.StageName == 'Closed Won' || op.StageName == 'Closed Lost')
    		{
    		op.CloseDate=date.today();
               
           // final_op.add(op);
            }
    	}
}
//update final_op;
}