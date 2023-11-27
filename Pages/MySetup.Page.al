page 59007 "My Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Setup";
    Caption = 'My Setup';

    layout
    {
        area(Content)
        {
            group(General)
            {
                ShowCaption = false;
                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
            }
            group("Number Series")
            {
                field("Overtime Req.No"; Rec."Overtime Req.No")
                {
                    ApplicationArea = All;
                    Caption = 'Overtime Request No.';
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