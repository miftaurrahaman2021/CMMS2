page 59025 "CMMS Solution Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Solution Master";
    Caption = 'Solution Master';
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("Solution Code"; Rec."Solution Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solution Code field.';
                }
                field("Solution Description"; Rec."Solution Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solutions field.';
                }
                field("Solution Process Steps"; Rec."Solution Process Steps")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solution Process Steps field.';
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

    var
        myInt: Integer;
}