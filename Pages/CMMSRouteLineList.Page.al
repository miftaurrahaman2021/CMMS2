page 59036 "Route Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Routes Line";
    Caption = 'Route Line List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("Resource Code"; Rec."Resource Code")
                {
                    ToolTip = 'Specifies the value of the Resource field.';
                }
                field("Resource Name"; Rec."Resource Name")
                {
                    ToolTip = 'Specifies the value of the Resource Name field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                }
                field("Equipment No."; Rec."Equipment No.")
                {
                    ToolTip = 'Specifies the value of the Equipment No field.';
                }
                field("JP No."; Rec."JP No.")
                {
                    ToolTip = 'Specifies the value of the Job Plan No. field.';
                }
                field("JP Description"; Rec."JP Description")
                {
                    ToolTip = 'Specifies the value of the Job Plan Description field.';
                }
                field("JP Seq.No."; Rec."JP Seq.No.")
                {
                    ToolTip = 'Specifies the value of the Seq.No. field.';
                }
                field("JP Task No."; Rec."JP Task No.")
                {
                    ToolTip = 'Specifies the value of the Task Code field.';
                }
                field("JP Task Name"; Rec."JP Task Name")
                {
                    ToolTip = 'Specifies the value of the Task Name field.';
                }
                field("Base UOM"; Rec."Base UOM")
                {
                    ToolTip = 'Specifies the value of the Base UOM field.';
                }
                field("JP Task Time"; Rec."JP Task Time")
                {
                    ToolTip = 'Specifies the value of the Task Duration field.';
                }
                field("PM First Date"; Rec."PM First Date")
                {
                    ToolTip = 'Specifies the value of the PM First Date field.';
                }
                field("PM No."; Rec."PM No.")
                {
                    ToolTip = 'Specifies the value of the PM No. field.';
                }
                field("Route Status"; Rec."Route Status")
                {
                    ToolTip = 'Specifies the value of the Route Status field.';
                }
                field("Routes Code"; Rec."Routes Code")
                {
                    ToolTip = 'Specifies the value of the Routes Code field.';
                }
                field("Routes Name"; Rec."Routes Name")
                {
                    ToolTip = 'Specifies the value of the Routes Name field.';
                }
                field("Routes Remarks"; Rec."Routes Remarks")
                {
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
            }
        }
    }
}
