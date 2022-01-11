/**
 * Created by esposito on 1/11/2022.
 */

@IsTest
private class Test_CommunityUser {
    @IsTest
    static void testBehaviorA() {
        System.runAs(createCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorB() {
        System.runAs(createCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorC() {
        System.runAs(createCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorD() {
        System.runAs(createCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }

    private static User createCommunityUser(){
        Account a = new Account(Name='Example Account');
        insert a;

        Contact c = new Contact(LastName='Example', AccountId = a.Id);
        insert c;

        Profile p = [SELECT Id FROM Profile WHERE Name = 'Customer Community User'];
        User currentUser = [SELECT Id, TimezoneSidKey FROM User WHERE Id = :UserInfo.getUserId()];


        User u = new User(
                ProfileId = p.Id,
                ContactId = c.Id,
                Alias = ''+ ((System.Math.Random() * 899999).intValue() + 100000),
                CommunityNickname = ''+ ((System.Math.Random() * 899999).intValue() + 100000),
                EmailEncodingKey = 'UTF-8',
                FirstName = 'Test',
                LastName = 'PortalUser',
                LanguageLocaleKey = 'en_US',
                LocaleSidKey = 'en_US',
                TimezoneSidKey = currentUser.TimeZoneSidKey,
                Email = ''+ ((System.Math.Random() * 899999).intValue() + 100000) + '@example.com',
                Username = ''+ ((System.Math.Random() * 899999).intValue() + 100000) + '@example.com'
        );

        insert u;

        return u;
    }
}