page 59010 "Asset Work Order History"
{
    PageType = ListPart;
    AutoSplitKey = true;
    MultipleNewLines = true;
    DelayedInsert = true;
    DeleteAllowed = false;
    SourceTable = "Asset Work Order History";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Controll)
            {
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                    Caption = 'FA No.';
                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order No field.';
                }
                field("Work Order Date"; Rec."Work Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Date field.';
                }
                field("Work Order Description"; Rec."Work Order Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Description field.';
                }
                field("Work Order Type"; Rec."Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                }
                field("Requested By"; Rec."Requested By")
                {
                    ApplicationArea = All;
                }
                field("WO Sch.Start Date"; Rec."WO Sch.Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Schedule Start Date field.';
                }
                field("WO Actual Start Date"; Rec."WO Actual Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Actual Start Date field.';
                }
                field("WO Close Date"; Rec."WO Close Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Close Date field.';
                }

                field(Priority; Rec.Priority)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Priority field.';
                }
                field("Observation Action"; Rec."Observation Action")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Observation / Action field.';
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}