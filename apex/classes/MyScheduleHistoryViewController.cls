public with sharing class MyScheduleHistoryViewController {
    
    // カスタムオブジェクトの項目履歴情報
    public List<MySchedule__History> histories {get; set;}
    
    /**
     * コンストラクタ
     */
    public MyScheduleHistoryViewController() {
        this.histories = this.getMyScheduleHistories();
    }
    
    /**
     * 項目履歴情報取得
     */
    private List<MySchedule__History> getMyScheduleHistories() {
        return [
            SELECT
                 CreatedById
                ,CreatedDate
                ,Field
                ,Id
                ,IsDeleted
                ,NewValue
                ,OldValue
                ,ParentId
            FROM
                MySchedule__History
            ORDER BY CreatedDate DESC
            LIMIT 200
        ];
    }
}