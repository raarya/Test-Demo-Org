@istest
private class TestVerifyDate {
    static testmethod void test1(){
        Date Date1 = Date.parse('01/01/2016');
        Date Date2 = Date1.addDays(26);
        
        Date VDate = VerifyDate.CheckDates(Date1, Date2);
        system.assertEquals(VDate.isSameDay(Date2), true);
        
        Date2 = Date1.addDays(-3);
        Date VDate1 = VerifyDate.CheckDates(Date1, Date2);
        system.assertEquals(VDate.isSameDay(Date2), false);
    }
}