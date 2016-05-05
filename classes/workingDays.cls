public class workingDays{

    public static Integer daysBetweenExcludingWeekends(Datetime startDate, Datetime endDate) {
    Integer i = 0;

    while (startDate < endDate) {
        if (startDate.format('EEE') != 'Sat' && startDate.format('EEE') != 'Sun') {
            i = i + 1;
        }
        startDate = startDate.addDays(1);
    }
        i=i-1;
system.debug('Number Of Days = '+ i );
    return i;
}
    
}