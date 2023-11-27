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
                    Caption = 'Job Plan CUE';
                }
            }
            group(RealTime)
            {

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
                action("Work Order Status")
                {
                    Caption = 'Work Order Status';
                    Image = Order;
                    ApplicationArea = All;
                    RunObject = page "CMMS Work Order Status";
                }
                action("Work Order Type")
                {
                    Caption = 'Work Order Type';
                    Image = OrderList;
                    ApplicationArea = All;
                    RunObject = page "CMMS Work Order Type";
                }
                action("Equipment Master")
                {
                    Caption = 'Equipment Master';
                    Image = FixedAssets;
                    ApplicationArea = All;
                    RunObject = Page "CMMS Equipment List";
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
                action("Resource Record")
                {
                    Caption = 'Resource Record';
                    Image = Resource;
                    ApplicationArea = All;
                    RunObject = page "Resource Ledger Entries";
                }
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
            group("Planning & Execuation")
            {
                action("PM Setup")
                {
                    Caption = 'PM Setup';
                    Image = MaintenanceLedger;
                    ApplicationArea = All;
                    RunObject = page "PM Main List";
                }
                action("Work Order")
                {
                    Caption = 'Work Order';
                    Image = Worksheet;
                    ApplicationArea = All;
                    RunObject = page "Work Order Selection";
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
                    RunObject = page "CMMS Equipment Master";
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