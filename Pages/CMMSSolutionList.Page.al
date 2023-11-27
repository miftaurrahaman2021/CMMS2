page 59026 "CMMS Solution List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Solution Master";
    Caption = 'Solution List';
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    CardPageId = "CMMS Solution Card";

    layout
    {
        area(Content)
        {
            repeater(General)
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