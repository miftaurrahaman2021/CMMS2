page 59038 "CMMS PM Generator"
{
    PageType = Worksheet;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CMMS PM Schedule";
    SourceTableView = sorting("PM No.", "RL Route Status", "RL Equip. No", "RL Task No", "PM Sch No.") where("PM Work Order Status" = filter(<> 2));
    layout
    {
        area(Content)
        {
            group("PM Scheduler")
            {
                field(StartDate; StartDate)
                {
                    Caption = 'PM Schedule Start Date';
                }
                field(EndDate; EndDate)
                {
                    Caption = 'PM Schedule End Date';
                }
            }
            repeater(Line)
            {
                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order No. field.';
                    Editable = false;
                }
                field("PM Work Order Status"; Rec."PM Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
            }

        }
    }
    actions
    {
        area(Processing)
        {
            action("HistoryEq")
            {
                ApplicationArea = All;
                Caption = 'Eqipment Ledger Entries';
                RunObject = page "Work Order Lists";
                RunPageLink = "PM No." = field("PM No."), "PM Equipment No." = field("RL Equip. No");
                RunPageMode = View;

            }
            action("RUNPMSCH")  // Run PM Scheduler
            {
                ApplicationArea = All;
                Caption = 'Run PM Scheduler';

                trigger OnAction()
                begin
                    if (StartDate = 0D) or (EndDate = 0D) then
                        Error('Date must not be blank..');
                    PMMainList.PMCreateScheduler1(StartDate, EndDate);
                end;
            }
            action("Generate Work Order")
            {
                ApplicationArea = All;
                Caption = 'Create Work Order';
                trigger OnAction();

                var
                    PSScheduler: Record "CMMS PM Schedule";
                    CMMSSetup: Record "CMMS Setup";
                    NoSeriesMgt: Codeunit NoSeriesManagement;
                    WorkOrderNo: Code[20];
                    WONos: Code[20];
                    RecRef: RecordRef;
                    PSScheduler2: Record "CMMS PM Schedule";
                    WOFilter: Code[100];
                    SelectionFilter: Codeunit SelectionFilterManagement;
                    Created: Boolean;

                begin
                    CMMSSetup.Get();
                    CMMSSetup.TestField("Work Order Nos.");
                    PSScheduler.Reset();
                    CurrPage.SetSelectionFilter(PSScheduler);
                    RecRef.GetTable(PSScheduler);
                    WOFilter := SelectionFilter.GetSelectionFilter(RecRef, PSScheduler.FieldNo("PM No."));
                    //Message(WOFilter);
                    WorkOrderNo := '';
                    PSScheduler.SetRange("Work Order No.", '');
                    if PSScheduler.FindSet() then
                        repeat
                            if WorkOrderNo <> PSScheduler."PM No." then begin
                                WONos := NoSeriesMgt.GetNextNo(CMMSSetup."Work Order Nos.", WorkDate, true);
                                Created := true;
                            end;
                            PSScheduler."Work Order No." := WONos;
                            PSScheduler."PM Work Order Status" := PSScheduler."PM Work Order Status"::"WO Created";
                            PSScheduler.Modify();
                            WorkOrderNo := PSScheduler."PM No.";
                        Until PSScheduler.next = 0;
                    if Created then
                        Message('Work Order Generated..');

                end;
            }
        }
    }

    var
        StartDate: Date;
        EndDate: Date;
        PMMainList: Record "PM Main List";
}