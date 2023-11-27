page 50144 "CM Work Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS PM Schedule";
    SourceTableView = sorting("RL Equip. No", "PM Sch No.") where("Work Order Type" = filter(CM));
    Caption = 'CM Work Order List';
    CardPageId = "CM Work Order Card";
    layout
    {
        area(Content)
        {
            repeater(General)
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
                field("PM First Start Date"; Rec."PM First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Start Date field.';
                }
                field("RL Resource Code"; Rec."RL Resource Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Code field.';
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
                field("RL Unit Price"; Rec."RL Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Unit Price field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

}