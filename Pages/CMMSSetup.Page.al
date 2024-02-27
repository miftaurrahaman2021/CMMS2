page 59021 "CMMS Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = true;
    SourceTable = "CMMS Setup2";
    Caption = 'CMMS Setup';

    layout
    {
        area(Content)
        {

            group("Number Series")
            {
                Caption = 'No Series';

                field("Route Nos."; Rec."Route Nos.")
                {
                    ApplicationArea = All;
                }
                field("Job Plan Nos."; Rec."Job Plan Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Plan Nos. field.';
                }
                field("Preventive Maintenance Nos."; Rec."Preventive Maintenance Nos.")
                {
                    ApplicationArea = All;
                }
                field("Equipment Master No."; Rec."Equipment Master No.")
                {
                    ApplicationArea = All;
                    Caption = 'Equipment Master No.';
                }
                field("Work Order Nos."; Rec."Work Order Nos.")
                {
                    ApplicationArea = All;
                }
                field("CM Work Order Nos."; Rec."CM Work Order Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Nos. field.';
                }
            }

            group("Posting")
            {

                field("WO Gen. Jnl Template"; Rec."WO Gen. Jnl Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the WO Gen. Jnl Template field.';
                }
                field("WO Gen. Jnl Batch"; Rec."WO Gen. Jnl Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the WO Gen. Jnl Batch field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        CMMSSetup: Record "CMMS Setup2";
    begin
        if not CMMSSetup.FindFirst() then Begin
            CMMSSetup.Init();
            CMMSSetup.Insert()
        End

    end;

    var

}