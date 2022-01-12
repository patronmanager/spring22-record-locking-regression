/**
 * Created by esposito on 1/11/2022.
 */

@IsTest
private class Test_CommunityUserFast {
    @TestSetup
    static void setup(){
        Test_CommunityUser.createCommunityUser();
    }

    @IsTest
    static void testFastA() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testFastB() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testFastC() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }
    @IsTest
    static void testFastD() {
        System.runAs(Test_CommunityUser.getCommunityUser()){
            for(Integer i=0; i<100000; i++){
                //Expensive operation to slow down this test method
                Crypto.generateAesKey(256);
            }
        }
    }

}