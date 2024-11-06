public with sharing class accountSearching {
    @AuraEnabled(cacheable=true)
    public static List<Account> searchAccounts(String searchKey) {
        return [
            SELECT Id, Name, Phone, Website
            FROM Account
            WHERE Name LIKE :searchKey
            LIMIT 200
        ];
    }
}