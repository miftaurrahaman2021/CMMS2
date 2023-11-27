page 59017 "Work Order Selection"
{
    Caption = 'Work Order Selection';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PM Main List";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'PM No.';
                    ToolTip = 'Specifies the value of the PM No. field.';
                }
                field("Routes No."; Rec."Routes No.")
                {
                    ApplicationArea = All;
                    Caption = 'Route No.';
                    ToolTip = 'Specifies the value of the Routes No. field.';
                }
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                    Caption = 'Equipment No.';
                    ToolTip = 'Specifies the value of the FA No. field.';
                }
                field("Next Job Plan"; Rec."Next Job Plan")
                {
                    ApplicationArea = All;
                    Caption = 'Job Plan No.';
                    ToolTip = 'Specifies the value of the Next Job Plan field.';
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