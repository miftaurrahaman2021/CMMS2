page 59018 "CMMS Role Center"
{
    PageType = RoleCenter;
    Caption = 'Computerized Maintenance Management System';
    layout
    {
        area(RoleCenter)
        {
            group(Active)
            {
                part(Part1; "CMMS Equipment CUE")
                {
                    ApplicationArea = All;
                    Caption = 'Equipment Information';
                }
                part(Part2; "CMMS Job Plan CUE")
                {
                    ApplicationArea = All;
                    Caption = 'Job Plan';
                }
            }
            group("Work Order")
            {
                part(Part3; "Work Order CUE")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order Status';
                }
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(Master)
            {
                action("CMMS Setup")
                {
                    Caption = 'Setup';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = Page "CMMS Setup";
                }
                action("Equipment Group")
                {
                    Caption = 'Equipment Group';
                    Image = Category;
                    ApplicationArea = All;
                    RunObject = page "CMMS Asset Category";
                }
                action(Plant)  // Modified on 6-Dec-2023 by Patric - Request from TECSA
                {
                    Caption = 'Plant';
                    Image = FixedAssets;
                    ApplicationArea = All;
                    RunObject = page "Plant List";
                }
                action("Section")  // Modified on 6-Dec-2023 by Patric - Request from TECSA
                {
                    Caption = 'Section';
                    Image = Select;
                    ApplicationArea = All;
                    RunObject = page "Section List";
                }
                action("Asset")    // Modified on 6-Dec-2023 by Patric - Request from TECSA
                {
                    Caption = 'Equipment Relationship';
                    Image = FixedAssets;
                    ApplicationArea = All;
                    RunObject = page "CMMS Asset List";
                }
                action("Job Posting Group")
                {
                    Caption = 'Job Posting Group';
                    Image = JobPrice;
                    ApplicationArea = All;
                    RunObject = page "Job Posting Groups";
                }
                /* action("Work Order Status")
                {
                    Caption = 'Work Order Status';
                    Image = Order;
                    ApplicationArea = All;
                    RunObject = page "CMMS Work Order Status";
                } */
                action("Work Order Type")
                {
                    Caption = 'Work Order Type';
                    Image = OrderList;
                    ApplicationArea = All;
                    RunObject = page "CMMS Work Order Type";
                }
                action("Problem/Cause Master")
                {
                    Caption = 'Cause/Problem Master';
                    Image = Calculate;
                    ApplicationArea = All;
                    RunObject = page "CMMS Cause Master";
                }
                action("Solution Master")
                {
                    Caption = 'Solution Master';
                    Image = SendToMultiple;
                    ApplicationArea = All;
                    RunObject = page "CMMS Solution List";
                }
                action("Failure Class Master")
                {
                    Caption = 'Failure Class Master';
                    Image = ErrorFALedgerEntries;
                    ApplicationArea = All;
                    RunObject = Page "Failure Class";
                }
                action("Task Master")           // Modified on 6-Dec-2023 by Patric - Request from TECSA
                {
                    Caption = 'Task Master';
                    Image = TaskList;
                    ApplicationArea = All;
                    RunObject = page "CMMS Task Master";
                }
                action("Equipment Master")
                {
                    Caption = 'Equipment Master';
                    Image = FixedAssets;
                    ApplicationArea = All;
                    RunObject = Page "CMMS Equipment List";
                }

                /*  action("Resource Record")
                 {
                     Caption = 'Resource Record';
                     Image = Resource;
                     ApplicationArea = All;
                     RunObject = page "Resource Ledger Entries";
                 } */
                action("Resource Groups")
                {
                    Caption = 'Resource Groups';
                    Image = Cost;
                    ApplicationArea = All;
                    RunObject = page "Resource Groups";
                }
                action("Job Plan")
                {
                    Caption = 'Job Plan';
                    Image = Job;
                    ApplicationArea = All;
                    RunObject = page "CMMS Job Plan List";
                }
                action(Routes)
                {
                    Caption = 'Routes';
                    Image = RoutingVersions;
                    ApplicationArea = All;
                    RunObject = page "CMMS Routes List";
                }
            }
            group("Preventive Maintenance")
            {
                action("PM Setup")
                {
                    Caption = 'PM Setup';
                    Image = MaintenanceLedger;
                    ApplicationArea = All;
                    RunObject = page "PM Main List";
                }
                action("Create PM Schedule")
                {
                    Caption = 'Run PM Schedule';
                    ApplicationArea = All;
                    Image = Planning;
                    RunObject = page "CMMS PM Generator";
                }
                action("PM Work Order")  // Modified by Patric on 12-Dec-2023
                {
                    Caption = 'PM Work Order';
                    Image = Worksheet;
                    ApplicationArea = All;
                    RunObject = page "Work Order Lists";
                }

            }
            group("Corrective Maintenance")
            {
                action("Corrective Work Order")  // Modified by Patric on 12-Dec-2023
                {
                    ApplicationArea = All;
                    Caption = 'Corrective Work Order';
                    Image = Worksheet;
                    RunObject = page "CM Work Order List";
                }

            }
            group(Reports)
            {
                action("Work Order List")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order PM/CM';
                    Image = OrderList;
                    RunObject = page "Complete Work Order List";
                }
            }
        }
        area(Creation)
        {
            group(Equipments)
            {
                action("Equipment Creation")
                {
                    Caption = 'Equipment Creation';
                    Image = FixedAssets;
                    ApplicationArea = All;
                    RunObject = Page "CMMS Equipment List";
                }
            }
            group(Route)
            {
                action("Routes Creation")
                {
                    Caption = 'Routes Creation';
                    Image = FixedAssets;
                    ApplicationArea = All;
                    RunObject = page "CMMS Routes Card";
                }
            }
        }
    }
}