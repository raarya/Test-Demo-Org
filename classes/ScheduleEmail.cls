global class ScheduleEmail Implements Schedulable
            {
                       global void execute(SchedulableContext sc)
                        {
                                    sendmail(); 
                        }
                        public void sendmail()
                        {
                                    Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                                    string [] toaddress= New string[]{'vkumar.sri@gmail.com'};
                                    email.setSubject('Testing Apex Scheduler-Subject');
                                    email.setPlainTextBody('Testing Apex Scheduler-Body');
                                    email.setToAddresses(toaddress);
                                    Messaging.sendEmail(New Messaging.SingleEmailMessage[]{email});
                        }
            }
