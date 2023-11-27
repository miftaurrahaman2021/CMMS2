pageextension 59003 "Main Asset Components Ext" extends "Main Asset Components"
{
    layout
    {
        addafter(Description)
        {
            field("Vendor No."; Rec."Vendor No.")
            {
                ApplicationArea = All;
                Caption = 'Vendor';
            }
            field("FA Location"; Rec."FA Location")
            {
                ApplicationArea = All;
                Caption = 'FA Location';
            }
            field("Manufacturer Code"; Rec."Manufacturer Code")
            {
                ApplicationArea = All;
                Caption = 'Manufacturer Code';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}