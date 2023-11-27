page 59024 "CMMS Cause Master"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Cause Master";
    Caption = 'Problem/Cause List';
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Problem/Cause Code field.';
                }
                field("Cause Description"; Rec."Cause Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cause Description field.';
                }
                field("Remedy Code"; Rec."Remedy Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solution Code field.';
                }
                field("Solution Description"; Rec."Solution Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solutions field.';
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