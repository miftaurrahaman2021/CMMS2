page 59028 "CMMS Failure Class Subform"
{
    Caption = 'Failure Class Subform';
    PageType = ListPart;
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    SourceTable = "CMMS Failure Clas Line";

    layout
    {
        area(Content)
        {
            repeater(Controll)
            {
                field("Failure Class Code"; Rec."Failure Class Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Failure Class Code field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                }
                field("Cause Code"; Rec."Cause Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cause Code field.';
                }
                field("Remedy Code"; Rec."Remedy Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remedy Code field.';
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