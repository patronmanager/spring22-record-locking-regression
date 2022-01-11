/**
 * Created by esposito on 1/11/2022.
 */

@IsTest
public class Test_CommunityUser {
    @TestSetup
    static void setup(){
        createCommunityUser();
    }

    @IsTest
    static void testBehaviorA() {
        System.runAs(getCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorB() {
        System.runAs(getCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorC() {
        System.runAs(getCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorD() {
        System.runAs(getCommunityUser()){
            for(Integer i=0; i<10000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }

    public static User getCommunityUser(){
        return [SELECT Id FROM User WHERE User.Contact.LastName = 'Example'];
    }

    public static User createCommunityUser(){
        Account a = new Account(Name='Example Account');
        insert a;

        Contact c = new Contact(LastName='Example', Email='test@example.com', AccountId = a.Id);
        insert c;

        Profile p = [SELECT Id FROM Profile WHERE Name = 'Customer Community User'];
        User currentUser = [SELECT Id, TimezoneSidKey FROM User WHERE Id = :UserInfo.getUserId()];


        String generatedAlias = 'al'+ ((System.Math.Random() * 899999).intValue() + 100000);

        User u = new User(
                ProfileId = p.Id,
                ContactId = c.Id,
                Contact = c,
                Alias = generatedAlias,
                CommunityNickname = generatedAlias,
                EmailEncodingKey = 'UTF-8',
                FirstName = 'Test',
                LastName = 'PortalUser',
                LanguageLocaleKey = 'en_US',
                LocaleSidKey = 'en_US',
                TimezoneSidKey = currentUser.TimeZoneSidKey,
                Email = c.Email,
                Username = c.Email
        );

        insert u;

        return u;
    }
}