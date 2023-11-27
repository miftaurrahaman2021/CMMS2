pageextension 59000 "Employee Card Ext" extends "Employee Card"
{
    layout
    {
        // Adding Department Code & Department Name in Employee Card
        // This code is written by JP on 24-Sep-2023

        addafter("Last Name")
        {
            field("Department Code"; Rec."Department Code")
            {
                ApplicationArea = All;
            }
            field("Department Name"; Rec."Department Name")
            {
                ApplicationArea = All;
            }
            field("Responsibility Code"; Rec."Responsibility Code")
            {
                ApplicationArea = All;
                Caption = 'Responsibility Center Code';
                ToolTip = 'Specifies the value of the Responsibility Code field.';
            }
            field("Responsibility Name"; Rec."Responsibility Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Responsibility Center Name field.';
            }
            field("Employee Category Code"; Rec."Employee Category Code")
            {
                ApplicationArea = All;
            }
            field("Pay Grade Code"; Rec."Pay Grade Code")
            {
                ApplicationArea = All;
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