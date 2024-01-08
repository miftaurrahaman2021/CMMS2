page 50160 "Asset Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CMMS Asset";
    // Caption = 'Asset Card';
    Caption = 'Equipment Relationship Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Asset No."; Rec."Asset No.")
                {
                    ToolTip = 'Specifies the value of the Asset- Equipment No. field.';
                    Caption = 'Equipment No.';   //TECSA Change Request on 21-Dec-2023
                }
                field("Asset Name - Equipment"; Rec."Asset Name - Equipment")
                {
                    ToolTip = 'Specifies the value of the Asset Name field.';
                    Caption = 'Equipment Name';   //TECSA Change Request on 21-Dec-2023
                }
                field("Asset Category"; Rec."Asset Category")
                {
                    ToolTip = 'Specifies the value of the Asset Category field.';
                    Caption = 'Equipment Category';   //TECSA Change Request on 21-Dec-2023
                }
                field("Plant ID"; Rec."Plant ID")
                {
                    ToolTip = 'Specifies the value of the Plant field.';
                }
                field("Section ID"; Rec."Section ID")
                {
                    ToolTip = 'Specifies the value of the Section field.';
                }
                field("Asset Dimension Code"; Rec."Asset Dimension Code")
                {
                    ToolTip = 'Specifies the value of the Dimension field.';
                }
            }

            //TECSA Change Request on 19-Dec-2023
            /*  group("Bill of Materials")
             {
                 part(EquipmentBillOfMaterils; "CMMS Equipment BOM Subform")
                 {
                     ApplicationArea = All;
                     Caption = 'Bill Of Materials';
                     UpdatePropagation = Both;
                     //   SubPageLink = "Equipment No." = field("Asset No.");
                     SubPageLink = "Equipment No." = field("Asset No."), "FA No." = field("Asset No.");  // Changes Made on 16-Dec-2023
                     Visible = true;
                 }
             } */
        }
    }

}