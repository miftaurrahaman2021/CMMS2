page 59020 "CMMS Equipment Components List"
{
    AutoSplitKey = true;
    Caption = 'Equipment Components';
    PageType = ListPart;
    DelayedInsert = true;
    MultipleNewLines = true;
    SourceTable = "Main Asset Component";
    Editable = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Controll)
            {
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("FA Location"; Rec."FA Location")
                {
                    ApplicationArea = All;
                }
                field("Manufacturer Code"; Rec."Manufacturer Code")
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