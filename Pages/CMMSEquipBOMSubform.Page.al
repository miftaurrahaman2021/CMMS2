page 59035 "CMMS Equipment BOM Subform"
{

    AutoSplitKey = true;
    Caption = 'Equipment BOM Details';
    PageType = ListPart;
    DelayedInsert = true;
    MultipleNewLines = true;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "CMMS Equipment BOM";

    layout
    {
        area(Content)
        {
            repeater(Controll)
            {
                field("Equipment No."; Rec."Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment No. field.';
                }
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                    Caption = 'Item Description';
                }
                field("Base UOM"; Rec."Base UOM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Base BOM field.';
                }
                field("Quantity Per"; Rec."Quantity Per")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity Per field.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
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