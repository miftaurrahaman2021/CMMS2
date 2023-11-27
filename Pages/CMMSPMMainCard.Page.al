page 59016 "CMMS PM Main Card"
{
    Caption = 'PM Main Card';
    PageType = Document;
    RefreshOnActivate = true;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PM Main List";


    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FA No. field.';
                }
                field("FA Description"; Rec."FA Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FA Description field.';
                }
                field("Routes No."; Rec."Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes No. field.';
                }
                field("Routes Description"; Rec."Routes Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Description field.';
                }
                field("Next Job Plan"; Rec."Next Job Plan")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next Job Plan field.';
                    Editable = false;
                    Visible = false;
                }
                field("Next Due Date"; Rec."Next Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next Due Date field.';
                    Editable = false;
                }
                field("PM Status"; Rec."PM Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Status field.';
                }

            }

            // 
            group("Work Order Details")
            {
                field("Work Order Status"; Rec."Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
                field("Work Order Type"; Rec."Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                }
                field("PM Posting Group"; Rec."PM Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Posting Group field.';
                }
                field("Work Order Priority"; Rec."Work Order Priority")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Priority field.';
                }
                field(Supervisor; Rec.Supervisor)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Supervisor field.';
                }
                field(Craft; Rec.Craft)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Craft field.';
                }
                field("No.Of WO Gen."; Rec."No.Of WO Gen.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Of Work Orders Generated field.';
                }
            }
            // Job Plan With Resources
            group("Job Plans")
            {
                part(JobPlans; "CMMS Routes Subform")
                {
                    ApplicationArea = All;
                    Visible = true;
                    SubPageLink = "Routes Code" = field("Routes No.");
                    UpdatePropagation = Both;
                }
            }
            /*          group("Bill Of Materials")
                      {
                          part(CMMSBillOfMaterials; "CMMS Equipment BOM Subform")
                          {
                              ApplicationArea = All;
                              Visible = true;
                              SubPageLink = "Equipment No." = field("No."), "FA No." = field("FA No.");
                              UpdatePropagation = Both;
                          }
                      }
                      */
            group("Time Based Maintenance")
            {

                field(FDH; Rec.FDH)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Frequency In Days and Hours field.';
                }
                field(FDWMQY; Rec.FDWMQY)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Frequency (Days, Weeks, Months, Qtr, Years) field.';
                }
                field("First Start Date"; Rec."First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Start Date field.';
                }
                field("Last WO Target Start Date"; Rec."Last WO Target Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last WO Target Start Date field.';
                }
                field("Last WO Completion Date"; Rec."Last WO Completion Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last WO Completion Date field.';
                }
                field("Use Target Start Date"; Rec."Use Target Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Use Target Start Date field.';
                }
                field("Override Next Due Date"; Rec."Override Next Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Override Next Due Date field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("History")
            {
                ApplicationArea = All;
                Caption = 'Work Order Ledger';
                RunObject = page "CMMS PM Scheduler";
                RunPageLink = "PM No." = field("No.");
                RunPageMode = View;

            }
            action("PM Schedule")
            {
                ApplicationArea = All;
                trigger OnAction()

                Begin
                    RouteLineRec.Reset();
                    RouteLineRec.SetRange("PM No.", Rec."No.");
                    RouteLineRec.SetRange("Route Status", PMMainRec."PM Status"::Approved);
                    if RouteLineRec.FindSet() then
                        repeat
                            PMScheduleRec.Init;
                            PMScheduleRec."PM No." := Rec."No.";
                            PMScheduleRec."PM Description" := Rec.Description;
                            PMScheduleRec."PM Equipment No." := Rec."FA No.";
                            PMScheduleRec."PM Equip.Description" := Rec.Description;
                            PMScheduleRec."PM Routes No." := Rec."Routes No.";
                            PMScheduleRec."PM Routes Name" := Rec."Routes Description";
                            PMScheduleRec."PM Status" := Rec."PM Status";
                            PMScheduleRec."PM First Start Date" := Rec."First Start Date";
                            PMScheduleRec."PM Work Order Status" := Rec."Work Order Status";
                            PMScheduleRec."PM Work Order Type" := Rec."Work Order Type";
                            PMScheduleRec."PM Work Order Priority" := Rec."Work Order Priority";
                            PMScheduleRec."PM Supervisor" := Rec.Supervisor;
                            PMScheduleRec."PM Craft" := Rec.Craft;

                            PMScheduleRec."RL Route No." := RouteLineRec."Routes Code";
                            PMScheduleRec."RL Route Name" := RouteLineRec."Routes Name";
                            PMScheduleRec."RL Equip. No" := RouteLineRec."Equipment No.";
                            PMScheduleRec."RL Line No." := RouteLineRec."Line No.";
                            PMScheduleRec."RL JP No." := RouteLineRec."JP No.";
                            PMScheduleRec."RL JP Name" := RouteLineRec."JP Description";
                            PMScheduleRec."RL Task No" := RouteLineRec."JP Task No.";
                            PMScheduleRec."RL Task Name" := RouteLineRec."JP Task Name";
                            PMScheduleRec."RL JP SqNo" := RouteLineRec."JP Seq.No.";
                            PMScheduleRec."RL JP Task Time" := RouteLineRec."JP Task Time";
                            PMScheduleRec."RL Route Ramarks" := RouteLineRec."Routes Remarks";
                            PMScheduleRec."RL Route Status" := RouteLineRec."Route Status";
                            PMScheduleRec."RL Resource Code" := RouteLineRec."Resource Code";
                            PMScheduleRec."RL Resource Name" := RouteLineRec."Resource Name";
                            PMScheduleRec."RL BOM" := RouteLineRec."Base UOM";
                            PMScheduleRec."RL Unit Price" := RouteLineRec."Unit Price";
                            PMScheduleRec.Insert();
                        until RouteLineRec.Next = 0;
                    Message('Recored Inserted In PM Schedule');
                End;
            }
        }
    }

    var
        PMMainRec: Record "PM Main List"; // Main PM Table
        RouteLineRec: Record "CMMS Routes Line";  // Route Line holding All the PM Related Info
        PMScheduleRec: Record "CMMS PM Schedule"; // Temp Table where data has to insert from PM Main and Route Line.
}