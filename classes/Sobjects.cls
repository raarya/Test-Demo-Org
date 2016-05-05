public class Sobjects{
 //public String val {get;set;}

    public map<String, Schema.SObjectType> getName()
    {
      /*List<Schema.SObjectType> gd = Schema.getGlobalDescribe().Values();     
      List<SelectOption> options = new List<SelectOption>();

      for(Schema.SObjectType f : gd)
      {
        options.add(new SelectOption(f.getDescribe().getLabel(),f.getDescribe().getLabel()));
      }
      system.debug('objects are ' +options);
        return options;
*/
        map<String, Schema.SObjectType> sob = new map<String, Schema.SObjectType>();
        sob = Schema.getGlobalDescribe();
        system.debug('map is ' +sob);
        return sob;
    }
}