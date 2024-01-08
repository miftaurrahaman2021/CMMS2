page 50193 "Work Order Lists"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = "CMMS PM Schedule";
    SourceTableView = sorting("RL Equip. No", "PM Sch No.") where("Work Order Type" = filter(PM)); // Modified by Patric on 12-Dec-2023
    CardPageId = "CMMS Work Order Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                }
                field("PM Status"; Rec."PM Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Status field.';
                }
                field("PM First Start Date"; Rec."PM First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Start Date field.';
                }
                field("PM Work Order Status"; Rec."PM Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
                field("PM Work Order Type"; Rec."PM Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                }
                field("PM Work Order Priority"; Rec."PM Work Order Priority")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Priority field.';
                }
                field("PM Supervisor"; Rec."PM Supervisor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Supervisor field.';
                }
                field("PM Craft"; Rec."PM Craft")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Craft field.';
                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order No. field.';
                }
                field("RL Route No."; Rec."RL Route No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Route Code Line field.';
                }
                field("RL Route Name"; Rec."RL Route Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Route Name field.';
                }
                field("RL Line No."; Rec."RL Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Line No field.';
                    Visible = false;
                }
                field("RL Equip. No"; Rec."RL Equip. No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Equip.No field.';
                }
                field("RL JP No."; Rec."RL JP No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP No. field.';
                }
                field("RL JP Name"; Rec."RL JP Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP Name field.';
                }
                field("RL Task No"; Rec."RL Task No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Task No. field.';
                }
                field("RL Task Name"; Rec."RL Task Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Task Name field.';
                }
                field("RL JP SqNo"; Rec."RL JP SqNo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP Seq.No field.';
                }
                field("RL JP Task Time"; Rec."RL JP Task Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP Task Time field.';
                }
                field("RL Route Ramarks"; Rec."RL Route Ramarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Route Remarks field.';
                }
                field("RL Resource Code"; Rec."RL Resource Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Code field.';
                }
                field("RL Resource Type"; Rec."RL Resource Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Type field.';
                }
                field("RL Resource Name"; Rec."RL Resource Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Name field.';
                }
                field("RL BOM"; Rec."RL BOM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL BOM field.';
                }
                field("RL Unit Price"; Rec."RL Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Unit Price field.';
                }
                field("RL Route Status"; Rec."RL Route Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Route Status field.';
                }
                field("Work Order Completion Date"; Rec."Work Order Completion Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Completion Date field.';
                }
                field(FDH; Rec.FDH)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Frequency In Hours field.';
                }
                field(FDWMQY; Rec.FDWMQY)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Frequency (Days) field.';
                }
                field("Next PM Due Date"; Rec."Next PM Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next PM Due Date field.';
                }
            }
        }
    }

}