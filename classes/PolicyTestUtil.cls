public with sharing class PolicyTestUtil {
    public static PolicyDetailSOAPCallNew.JHHeader getReqHeader(){    
        PolicyDetailSOAPCallNew.JHHeader jhHeader= new PolicyDetailSOAPCallNew.JHHeader();
        
        jhHeader.Version = '1.0';
        jhHeader.ConversationUID = '1';
        jhHeader.MessageUID = EncodingUtil.convertToHex(crypto.generateAesKey(128));
        jhHeader.RelatesTo = 'GetPolicyDetails';
        jhHeader.MessageType = 'Request';
        //2014-02-17T13:04:00-05:00
        //2015-01-30T03:31:04.000Z
        //TimeZone tz = UserInfo.getTimeZone();
        
        jhHeader.OriginalMessageDateTime = Datetime.valueOf(System.now().formatGmt('yyyy-MM-dd HH:mm:ss'));// + String.valueOf(tz.getOffset(Datetime.now()))));
        jhHeader.CurrentMessageDateTime =  Datetime.valueOf(System.now().formatGmt('yyyy-MM-dd HH:mm:ss'));// + String.valueOf(tz.getOffset(Datetime.now()))));
 
        PolicyDetailSOAPCallNew.MessageSource MessageSource = new PolicyDetailSOAPCallNew.MessageSource();
    
        MessageSource.ApplicationName = 'Captivate';
        MessageSource.ApplicationUserID = 'Ez';
        MessageSource.HostName = 'local';
        MessageSource.ProcessID = '123456';
        MessageSource.UserID = 'patelal';
        jhHeader.MessageSource = MessageSource;
        
        PolicyDetailSOAPCallNew.ServiceInfo ServiceInfo = new PolicyDetailSOAPCallNew.ServiceInfo();
        ServiceInfo.ServiceName = 'Policy';
        ServiceInfo.ServiceOperation = 'GetPolicyDetails';
        ServiceInfo.ServiceVersion = '1.0';
        jhHeader.ServiceInfo = ServiceInfo;
        
        //PolicyDetailSOAPCallNew.Status Status = new PolicyDetailSOAPCallNew.Status();
        //Status.StatusCode = '1';
        //Status.StatusDescription = '1';
        //jhHeader.Status = Status;
        
        jhHeader.EnvironmentID = '1';
        jhHeader.RequestTimeOut = 1;
        
        return(jhHeader);
    }
    
    public static Security_element getSecurity_element(){
        return(new Security_element());
    }
    
    public class Security_element{                           
        public UsernameToken_element usernameToken;        
        public TimeStamp_element timeStamp;  
        //public String mustUnderstand;
        //public String 
              
        private String[] usernameToken_type_info = new String[]{'UsernameToken','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd','element','1','1','false'};        
        private String[] timeStamp_type_info = new String[]{'Timestamp','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd','element','1','1','false'};
        //private String[] mustUnderstand_att_info = new String[]{'env:mustUnderstand'};
        //private String[] other_att_info = new String[]{'xmlns:wsu='};        
        private String[] apex_schema_type_info = new String[]{'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd','true','false'};        
        private String[] field_order_type_info = new String[]{'usernameToken'};      
                    
        public Security_element() { 
            String username = 'svcpfspartydev';
            String password = '3DAp8Gb4';
            DateTime dateVal = System.now();
            String createdStr = dateVal.formatGmt('yyyy-MM-dd HH:mm:ss.SSSSSS');
            String nonceStr = EncodingUtil.base64Encode(Blob.valueOf(String.valueOf(Crypto.getRandomInteger())));                           
                        
            usernameToken = new UsernameToken_element(username,password,nonceStr,createdStr);
            timeStamp =  new TimeStamp_element();
            //mustUnderstand = '1';
            //other = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd';
        }        
    }  
     
    public class UsernameToken_element {                           
        
        public UsernameToken_element(String username, String password,string nonceStr,String dateVal) {                     
            this.username = username;          //svcpfspartydev           
            this.password = password;          //3DAp8Gb4          
            this.nonce = nonceStr; //new Nonce_element(nonceStr);                     
            this.created = dateVal;                                  
        }   
        public String username;        
        public String password;        
        public String nonce;        
        public String created;        
        private String[] username_type_info = new String[]{'Username','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd','string','1','1','false'};        
        private String[] nonce_type_info = new String[]{'Nonce','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary',null,'1','1','false'};       
        //private String[] nonce_type_info = new String[]{'nonce','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0',null,'1','1','false'};       
        //private String[] created_type_info = new String[]{'Created','http://www.w3.org/2001/XMLSchema','dateTime','1','1','false'};        
        private String[] created_type_info = new String[]{'Created','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd','dateTime','1','1','false'};        
        private String[] password_type_info= new String[]{'Password','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText','string','1','1','false'};        
        private String[] apex_schema_type_info = new String[]{'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd','true','false'};        
        // private String[] field_order_type_info = new String[]{'username','password','nonce','created'};    
        private String[] field_order_type_info = new String[]{'username','password'/*, 'nonce', 'created'*/};    
                                
                          
    }
    
      public class TimeStamp_element {
        public DateTime Created;
        public DateTime Expires;
        //public String Id;
        public String xmlns;
        //private String[] Created_type_info = new String[]{'Created','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd','dateTime','0','1','false'};
        private String[] Created_type_info = new String[]{'Created','','dateTime','1','1','false'};
        //private String[] Expires_type_info = new String[]{'Expires','http://www.w3.org/2001/XMLSchema','dateTime','0','1','false'};
        private String[] Expires_type_info = new String[]{'Expires','','dateTime','1','1','false'};
        //private String[] apex_schema_type_info = new String[]{'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd','true','false'};
        //private String[] Id_att_info = new String[]{'wsu:Id'};
        private String[] xmlns_att_info = new String[]{'xmlns'};
        private String[] apex_schema_type_info = new String[]{'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Created','Expires'};
        public TimeStamp_element(){
            Created = System.now();
            Expires = System.now().addMinutes(10);
            //Id = 'TS-91A791EA316B5E8F3814224684395567';
            xmlns = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd';
        }
    }

    
    /*public class Password_element {                           
        public String password;
        public String Type;
        private String[] password_type_info = new String[]{'','http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd#PasswordText','string','0','1','false'};        
        private String[] Type_att_info = new String[]{'Type'};        
        private String[] apex_schema_type_info = new String[]{'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd','true','false'};        
        private String[] field_order_type_info = new String[]{'password'};    
        
        public Password_element(String pswd){
            this.password = pswd;
            Type ='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
        }
    }*/
    

}
        
    /*
    DateTime dateVal = System.now();
    String createdStr = d.formatGmt('yyyy-MM-dd HH:mm:ss.SSSSSS');
    String nonceStr = String.valueOf(Crypto.getRandomInteger());                           
    Blob nonceBlob = Blob.valueOf(nonceStr);
    nonceStr = EncodingUtil.base64Encode(nonceBlob);  
    //String nonceStr = EncodingUtil.base64Encode(Blob.valueOf(String.valueOf(Crypto.getRandomInteger())));                           
    
    SearchBySSNController.Security_element Security = new SearchBySSNController.Security_element(userid,password,nonceStr,dateVal);
    private String Security_hns = 'Security=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd';                 
    */