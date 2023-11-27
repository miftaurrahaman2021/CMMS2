report 59001 "Create PM Scheduler"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    Caption = 'Run PM Scheduler';

    dataset
    {
        dataitem("PM Main List"; "PM Main List")
        {
            DataItemTableView = sorting("No.");
            trigger OnPreDataItem()
            Begin
                if (PMFdate = 0D) or (PMEdate = 0D) then
                    Error('Date must not be blank..');
                "PM Main List".SetFilter("First Start Date", '%1..%2', PMFdate, PMEdate);
            End;

            trigger OnAfterGetRecord()
            var
                PMMainList: Record "PM Main List";
            Begin
                PMMainList.PMCreateScheduler("PM Main List");
            End;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(PMFdate; PMFdate)
                    {
                        ApplicationArea = All;
                        Caption = 'Start Date';
                    }
                    field(PMEdate; PMEdate)
                    {
                        ApplicationArea = All;
                        Caption = 'End Date';
                    }
                }
            }
        }

    }

    var
        PMFdate: date;
        PMEdate: date;
}