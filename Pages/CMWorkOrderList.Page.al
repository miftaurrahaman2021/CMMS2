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
                    Caption = 'Work Order No';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                    Caption = 'Work Order Description';
                }
                // Modified by Patric on 12-Dec-2023
                /*  field("PM Routes No."; Rec."PM Routes No.")
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
                 } */

                field("RL JP No."; Rec."RL JP No.")  //TECSA Change Request on 21-Dec-2023
                {
                    ToolTip = 'Specifies the value of the RL JP No. field.';
                    Caption = 'Job Plan';
                }
                field("RL JP Name"; Rec."RL JP Name")  //TECSA Change Request on 21-Dec-2023
                {
                    ToolTip = 'Specifies the value of the RL JP Name field.';
                    Caption = 'Job Plan Name';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                    Caption = 'Equipment No.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                    Caption = 'Equipment Description';
                }
                field("Plant Code"; Rec."Plant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant field.';
                }
                field("Section Code"; Rec."Section Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Section field.';
                }
                field("Work Order Date"; Rec."Work Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Date field.';
                }
                field("Work Order Start Date"; Rec."Work Order Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Start Date field.';
                }
                field("Work Order Completion Date"; Rec."Work Order Completion Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Completion Date field.';
                }
                field("Work Order Type"; Rec."Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                }
                field("Work Order End Date"; Rec."Work Order End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Completion Date field.';
                }
                field("PM Work Order Status"; Rec."PM Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
                /*   field("HOD Approval"; Rec."HOD Approval")
                  {
                      ApplicationArea = All;
                      ToolTip = 'Specifies the value of the Department Head Approval field.';
                  }
                  field("Store Department Approval"; Rec."Store Department Approval")
                  {
                      ApplicationArea = All;
                      ToolTip = 'Specifies the value of the Store Department Head Approval field.';
                  } */
                field("HOD Approval Status"; Rec."HOD Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department Head Approval Status field.';
                    Caption = 'Department Head Approval Status';
                }
                field("Store Approval Status"; Rec."Store Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Store Approval Status field.';
                    Caption = 'Store Department Approval Status';
                }

                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created By field.';
                }

                // Modified by Patric on 12-Dec-2023
                /*   field("PM First Start Date"; Rec."PM First Start Date")
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
                  } */
            }
        }
        area(Factboxes)
        {

        }
    }

}