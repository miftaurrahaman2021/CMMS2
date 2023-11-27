page 59011 "Failure Class"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Failure Class";
    Caption = 'Failure Class';
    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    CardPageId = "CMMS Failure Class Master";


    layout
    {
        area(Content)
        {
            repeater(Controll)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
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