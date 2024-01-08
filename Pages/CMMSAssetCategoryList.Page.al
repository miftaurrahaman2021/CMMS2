page 50151 "CMMS Asset Category" // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    PageType = List;
    Caption = 'CMMS Equipment Group';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Asset Category";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Asset Category Code"; Rec."Asset Category Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Asset Category Cod field.';
                    Caption = 'Equipment Group Code';  //TECSA Change Request on 19-Dec-2023 
                }
                field("Asset Category Name"; Rec."Asset Category Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Asset Category Name field.';
                    Caption = 'Equipment Group Name';  //TECSA Change Request on 19-Dec-2023 
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}