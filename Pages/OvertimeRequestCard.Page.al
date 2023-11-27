page 59005 "Overtime Request"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Overtime Request";
    Caption = 'Overtime Request Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Request ID field.';
                    ShowMandatory = true;
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Request Date field.';
                    ShowMandatory = true;
                }
                field("Employee ID"; Rec."Employee ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee ID field.';
                    ShowMandatory = true;
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

                field("Pay Grade"; Rec."Pay Grade")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Pay Grade field.';
                }
                field("Request Status"; Rec."Request Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Request Status field.';
                }

            }
            group(Overtime)
            {
                field("OT Type Code"; Rec."OT Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type Code field.';
                    ShowMandatory = true;
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
                field("Hourly Time"; Rec."Hourly Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hourly Time field.';
                }
                field("Total Overtime"; Rec."Total Overtime")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Overtime Hours field.';
                }
                field("Task Description"; Rec."Task Description")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

            }
            group(Accounts)
            {
                field("OT Debit Account"; Rec."OT Debit Account")
                {
                    ApplicationArea = All;
                }
                field("OT Credit Account"; Rec."OT Credit Account")
                {
                    ApplicationArea = All;
                }
                field("OT Vat Account"; Rec."OT Vat Account")
                {
                    ApplicationArea = All;
                }
            }
            group(Administration)
            {

                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Submit)
            {
                ApplicationArea = All;
                ToolTip = 'Pending Approval';

                trigger OnAction()
                begin
                    if (Rec."Request Status" = Rec."Request Status"::Open) then begin
                        Rec.Validate("Request Status", Rec."Request Status"::"Pending Approval");
                        rec.Modify()
                    end else
                        Error('Record can not modify');
                end;
            }
            action(Reopen)
            {
                ApplicationArea = All;
                trigger OnAction()
                Begin
                    if (Rec."Request Status" = Rec."Request Status"::"Pending Approval") or
(Rec."Request Status" = Rec."Request Status"::Released) then Begin
                        Rec.Validate("Request Status", Rec."Request Status"::Open)
                    End
                    else
                        Error('Can not modify the record');
                    Rec.Modify();
                End;
            }
            action(Approve)
            {
                trigger OnAction()
                begin
                    Rec.TestField(Rec."Request Status", Rec."Request Status"::"Pending Approval");
                    if (Rec."Request Status" = Rec."Request Status"::"Pending Approval") then begin
                        Rec.Validate("Request Status", Rec."Request Status"::Released);
                        Rec.Modify();
                    end else
                        Error('Record can not be modified!!');
                end;
            }
            action("Journal Creation")
            {
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}