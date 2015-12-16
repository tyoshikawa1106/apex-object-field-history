@isTest
private class MyScheduleHistoryViewControllerTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());

    /**
     * コンストラクタ
     */
    static testMethod void MyScheduleHistoryViewControllerTest1() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            MyScheduleHistoryViewController cls = new MyScheduleHistoryViewController();
            
            Test.stopTest();

            System.assertEquals(cls.histories.size(), 0);
        }
    }
}