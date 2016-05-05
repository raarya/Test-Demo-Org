@istest
private class TestRestrictContactByName {
    static testmethod void test1(){
        Contact con = new Contact(lastname = 'INVALIDNAME');
        //insert con;
//test.startTest();
        Database.SaveResult result = Database.insert(con, false);
  //      test.stopTest();
        system.assertEquals(con.id, null);
        System.assert(!result.isSuccess());

        System.assert(result.getErrors().size() > 0);

        //System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML'),

         //                    result.getErrors()[0].getMessage().co);

    }
}