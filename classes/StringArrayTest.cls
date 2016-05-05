public class StringArrayTest{

    public static list<String> generateStringArray (integer n){
        list<String> lstTestStrings = new list<String>();
        for (integer i = 0; i < n; i++){    
            lstTestStrings.add('Test ' + i);
        }
        system.debug('the list is ' + lstTestStrings);
        return lstTestStrings;
     }
}