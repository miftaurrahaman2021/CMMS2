report 59000 "Overtime Request List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Overtime Request List';
    DefaultLayout = RDLC;
    //   DefaultRenderingLayout = LayoutName;

    RDLCLayout = './ReportLayout/OvertimeRequestList.rdl';

    dataset
    {
        dataitem("Overtime Request"; "Overtime Request")
        {
            column(No_OvertimeRequest; "No.")
            {
            }
            column(Date_OvertimeRequest; "Date")
            {
            }
            column(EmployeeID_OvertimeRequest; "Employee ID")
            {
            }
            column(EmployeeName_OvertimeRequest; "Employee Name")
            {
            }
            column(DepartmentCode_OvertimeRequest; "Department Code")
            {
            }
            column(JobTitle_OvertimeRequest; "Job Title")
            {
            }
            column(OTTypeCode_OvertimeRequest; "OT Type Code")
            {
            }
            column(HourlyTime_OvertimeRequest; "Hourly Time")
            {
            }
            column(OTStartDateTime_OvertimeRequest; "OT Start Date Time")
            {
            }
            column(OTEndDateTime_OvertimeRequest; "OT End Date Time")
            {
            }
            column(TotalOvertime_OvertimeRequest; "Total Overtime")
            {
            }
            column(TaskDescription_OvertimeRequest; "Task Description")
            {
            }
            column(RequestStatus_OvertimeRequest; "Request Status")
            {
            }
            column(PayGrade_OvertimeRequest; "Pay Grade")
            {
            }
            column(OTCreditAccount_OvertimeRequest; "OT Credit Account")
            {
            }
            column(OTDebitAccount_OvertimeRequest; "OT Debit Account")
            {
            }
            column(OTVatAccount_OvertimeRequest; "OT Vat Account")
            {
            }
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(General)
                {
                    field(RequestStatus; RequestStatus)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var
        RequestStatus: Enum "Request Status";
}