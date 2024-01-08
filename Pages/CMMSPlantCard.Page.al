page 50172 "Plant Card"   // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Plant;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant Code field.';
                }
                field("Plant Name"; Rec."Plant Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant Name field.';
                }
                field("Plant Location"; Rec."Plant Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant Location field.';
                }
                field("Plant Status"; Rec."Plant Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Active / Inactive field.';
                }
            }
        }
    }
}