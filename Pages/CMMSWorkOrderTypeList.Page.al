page 59034 "CMMS Work Order Type"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS WorkOrder Type";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type Code field.';
                }
                field("Work Order Type"; Rec."Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
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