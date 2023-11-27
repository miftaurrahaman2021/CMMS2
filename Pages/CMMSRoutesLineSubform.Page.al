page 59031 "CMMS Routes Subform"
{
    //   DelayedInsert = true;
    //  MultipleNewLines = true;
    //   AutoSplitKey = true;
    //   LinksAllowed = false;
    PageType = ListPart;
    //  ApplicationArea = All;
    // UsageCategory = Lists;
    SourceTable = "CMMS Routes Line";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Routes Code"; Rec."Routes Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Code field.';
                    Editable = false;
                }
                field("Routes Name"; Rec."Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Name field.';
                    Editable = false;
                    Visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                }
                field("Equipment No."; Rec."Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment No field.';
                    Editable = false;
                }
                field("JP No."; Rec."JP No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Plan No. field.';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        JobPlanLineRec: Record "Job Plan Line2";
                    Begin
                        JobPlanLineRec.Reset();
                        JobPlanLineRec.SetRange("Job Plan Status", JobPlanLineRec."Job Plan Status"::Approved); // Only Approved Job Plan will be Listed for Route
                        if Page.RunModal(Page::"Job Plan Line List", JobPlanLineRec) = Action::LookupOK then Begin
                            // "JP Description" := JobPlanLineRec.Description;
                            Rec."JP No." := JobPlanLineRec."Job Plan No.";
                            Rec."JP Description" := JobPlanLineRec.Description;
                            Rec."JP Task No." := JobPlanLineRec."Task No.";
                            Rec."JP Task Name" := JobPlanLineRec."Task Description";
                            Rec."JP Seq.No." := JobPlanLineRec."Seq.No";
                            Rec."JP Task Time" := JobPlanLineRec.Duration;
                            Rec."Route Status" := JobPlanLineRec."Job Plan Status";

                            // Defining the Resource Information into Routes...

                            Rec."Resource Code" := JobPlanLineRec."Resource ID";
                            Rec.Type := JobPlanLineRec."Resource Type";
                            Rec."Resource Name" := JobPlanLineRec."Resource Name";
                            Rec."Base UOM" := JobPlanLineRec."Base UOM";
                            Rec."Unit Price" := JobPlanLineRec."Unit Price";
                        End;
                    End;

                }
                field("JP Description"; Rec."JP Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Plan Description field.';
                    Editable = false;
                }
                field("JP Task No."; Rec."JP Task No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Task Code field.';
                    Editable = false;
                }
                field("JP Task Name"; Rec."JP Task Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Task Name field.';
                    Editable = false;
                }
                field("JP Seq.No."; Rec."JP Seq.No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Seq.No. field.';
                    Editable = false;
                }
                field("JP Task Time"; Rec."JP Task Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Task Duration field.';
                    Editable = false;
                }
                field("Routes Remarks"; Rec."Routes Remarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
                field("Route Status"; Rec."Route Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Route Status field.';
                    Editable = false;
                }

                // Resource information recording in Route Line..
                field("Resource Code"; Rec."Resource Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Resource field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Resource Type field.';
                }
                field("Resource Name"; Rec."Resource Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Resource Name field.';
                    Editable = false;
                }
                field("Base UOM"; Rec."Base UOM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Base UOM field.';
                    Editable = false;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price field.';
                    Editable = false;
                }

                // Auto Updated Field once
                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM No. field.';
                    Editable = false;
                }
                field("PM First Date"; Rec."PM First Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Date field.';
                    Editable = false;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}