public class TaskCleanUp {
   
    @InvocableMethod (label='The tasks which have not been started need to be deleted')
    public static void deleteTasks(List<ID> lstContactIds) {
        List<Task> tasks=[select id from Task
                      where WhatId in: lstContactIds
                      and Status = 'Not Started'
                      ];
        delete tasks;
        
     
    }
    

}