page 59009 "CMMS PM Scheduler"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS PM Schedule";
    Caption = 'PM Scheduler List';
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("PM No."; Rec."PM No.")
                {
                    ToolTip = 'Specifies the value of the PM Code field.';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ToolTip = 'Specifies the value of the PM Description field.';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order No. field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Generate Work Order")
            {
                ApplicationArea = All;
                Visible = false;
                trigger OnAction();

                var
                    PSScheduler: Record "CMMS PM Schedule";
                    CMMSSetup: Record "CMMS Setup2";
                    NoSeriesMgt: Codeunit NoSeriesManagement;
                    WorkOrderNo: Code[20];
                    RecRef: RecordRef;
                    PSScheduler2: Record "CMMS PM Schedule";
                    WOFilter: Code[100];
                    SelectionFilter: Codeunit SelectionFilterManagement;
                    WONos: Code[20];
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
                            if WorkOrderNo <> PSScheduler."PM No." then
                                WONos := NoSeriesMgt.GetNextNo(CMMSSetup."Work Order Nos.", WorkDate, true);
                            PSScheduler."Work Order No." := WONos;
                            PSScheduler.Modify();
                            WorkOrderNo := PSScheduler."PM No.";
                        Until PSScheduler.next = 0;
                    Message('Work Order Generated..');
                end;
            }

        }
    }
}