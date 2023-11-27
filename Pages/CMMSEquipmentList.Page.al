page 59023 "CMMS Equipment List"
{
    ApplicationArea = All;
    Caption = 'Equipment List';
    PageType = List;
    SourceTable = "CMMS Equipment Master";
    UsageCategory = Lists;
    CardPageId = "CMMS Equipment Master";
    SourceTableView = sorting("No.", "FA No.") where("Equipment Status" = filter(true));
    DeleteAllowed = false;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {


                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Master Equip No. field.';

                }
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment No. field.';
                }
                field("Equipment Description"; Rec."Equipment Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment Description field.';
                }
                field("FA Location Code"; Rec."FA Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FA Location Code field.';
                }
                field("Manufacturer Code"; Rec."Manufacturer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Manufacturer Code field.';
                }
                field("Model No."; Rec."Model No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Model No. field.';
                }
                field(Criticality; Rec.Criticality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Criticality field.';
                }
                field("Equipment Category"; Rec."Equipment Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class/Category field.';
                }
                field("Equipment Status"; Rec."Equipment Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
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