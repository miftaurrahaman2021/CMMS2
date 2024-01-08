page 50178 "Section List"  // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Section;
    Caption = 'Section List';
    CardPageId = "Section Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Section field.';
                }
                field("Section Name"; Rec."Section Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Section Name field.';
                }
                field("Plant ID"; Rec."Plant ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant ID field.';
                }
                /*          field("Equipment No."; Rec."Equipment No.")
                          {
                              ApplicationArea = All;
                              ToolTip = 'Specifies the value of the Equipment No. field.';
                          }
                          */
            }
        }
        area(Factboxes)
        {

        }
    }

}