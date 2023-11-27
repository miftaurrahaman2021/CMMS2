page 59006 "Overtime Request List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Overtime Request";
    Editable = false;
    Caption = 'Overtime Request List';
    CardPageId = "Overtime Request";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Request ID field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Request Date field.';
                }
                field("Employee ID"; Rec."Employee ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee ID field.';
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Name field.';
                }
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department Code field.';
                }
                field("Job Title"; Rec."Job Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Title field.';
                }
                field("OT Type Code"; Rec."OT Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type Code field.';
                }
                field("Hourly Time"; Rec."Hourly Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hourly Time field.';
                }
                field("OT Start Date Time"; Rec."OT Start Date Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Start Date&Time field.';
                }
                field("OT End Date Time"; Rec."OT End Date Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime End Date&Time field.';
                }

                field("Total Overtime"; Rec."Total Overtime")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Overtime Hours field.';
                }
                field("Request Status"; Rec."Request Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Request Status field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Print Request")
            {
                ApplicationArea = All;
                Image = Report;

                trigger OnAction();
                var
                    OverTimeReq: Record "Overtime Request";
                begin
                    OverTimeReq.Reset();
                    OverTimeReq.SetRange("No.", Rec."No.");
                    Report.RunModal(Report::"Overtime Request List", true, false, OverTimeReq);
                end;
            }
        }
    }
}