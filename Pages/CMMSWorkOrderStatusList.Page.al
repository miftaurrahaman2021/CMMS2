page 59033 "CMMS Work Order Status"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Work Order Status";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status Code field.';
                }
                field("Work Order Status"; Rec."Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
                field("Work Order Seq."; Rec."Work Order Seq.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Seq.No field.';
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