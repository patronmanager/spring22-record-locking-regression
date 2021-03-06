/**
 * Created by esposito on 1/11/2022.
 */

@IsTest
private class Test_CommunityUserMedium {
    @TestSetup
    static void setup(){
        Test_CommunityUser.createCommunityUser();
    }

    @IsTest
    static void testBehaviorA() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorB() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorC() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorD() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorE() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testBehaviorF() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }

}