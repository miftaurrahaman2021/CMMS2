page 59027 "CMMS Failure Class Master"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Failure Class";


    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Failure Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
            group(Line)
            {
                part(Lines; "CMMS Failure Class Subform")
                {
                    ApplicationArea = All;
                    Caption = 'Failure Class Line';
                    UpdatePropagation = Both;
                    SubPageLink = "Failure Class Code" = field("No.");
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