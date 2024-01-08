page 50179 "Section Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Section;
    Caption = 'Section Card';

    layout
    {
        area(Content)
        {
            group(General)
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
    }
}