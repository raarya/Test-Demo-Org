public class stackClass{
list<string> stack=new list<string>();
    integer index=-1;
    
    public void push(string data)
    {
        stack.add(data);
        system.debug('Added : '+data);
        system.debug('now the stack has ' +stack);
        index++;
    }
    public void pop()
    {
        if(index>=0){
            
           while (index>=0)
           {
            system.debug('Removed : ' + stack.get(index));
            stack.remove(index--);
               system.debug('now the stack has ' +stack);
           }
        }
        else
        {        system.debug('Stack is empty');
           //return 'Stack is Empty';
        }
    }
        
}