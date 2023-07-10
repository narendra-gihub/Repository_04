public class accountController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsRelatedToAccount(String accId) {
        return [SELECT Id, FirstName, LastName, Email, Phone from Contact where AccountId = :accId];
    }
    @AuraEnabled
    public static List<Contact> getContacts(String accId) {
        System.System.debug('acc===>+accId');
        return [SELECT Id, FirstName, LastName, Email, Phone from Contact where AccountId = :accId];
    }
}