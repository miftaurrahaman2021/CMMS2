page 50162 "CMMS Asset List"   // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Asset";
    //   Caption = 'CMMS Asset';
    Caption = 'Equipment Relationship List';
    CardPageId = "Asset Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Asset No."; Rec."Asset No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Asset- Equipment No. field.';
                    Caption = 'Equipment No.';   //TECSA Change Request on 19-Dec-2023
                }
                field("Asset Name - Equipment"; Rec."Asset Name - Equipment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Asset Name field.';
                    Caption = 'Equipment Name';  //TECSA Change Request on 19-Dec-2023
                }
                field("Asset Category"; Rec."Asset Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Asset Category field.';
                    Caption = 'Equipment Group';  //TECSA Change Request on 19-Dec-2023
                }
                field("Plant ID"; Rec."Plant ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant field.';
                }
                field("Section ID"; Rec."Section ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Section field.';
                }
                field("Asset Dimension Code"; Rec."Asset Dimension Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dimension field.';
                }

            }
        }
    }
}