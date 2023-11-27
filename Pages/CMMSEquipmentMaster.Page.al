page 59022 "CMMS Equipment Master"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "CMMS Equipment Master";
    Caption = 'Equipment Mastser';

    layout
    {
        area(Content)
        {
            group(Equipment)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Master Equip No. field.';
                    Visible = false;      // Updated on 27-11-2023 by Patric
                }
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment No. field.';
                    Editable = false;         // Updated on 27-11-2023 by Patric
                }
                field("Equipment Description"; Rec."Equipment Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Equipment Description field.';
                }
                field("Equipment Category"; Rec."Equipment Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class/Category field.';
                }
                field("FA Location Code"; Rec."FA Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FA Location Code field.';
                }
                field("Model No."; Rec."Model No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Model No. field.';
                }
                field(OEM; Rec.OEM)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OEM field.';
                }
                field("PID No."; Rec."PID No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P&ID No. field.';
                }
                field("Equipment Status"; Rec."Equipment Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Search Description"; Rec."Search Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Search Description field.';
                }
                field(Criticality; Rec.Criticality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Criticality field.';
                }
                field("Equipment Area"; Rec."Equipment Area")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Area field.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Serial No. field.';
                }
                field("Process Fluid"; Rec."Process Fluid")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Process Fluid field.';
                }
                field("Line Loop No."; Rec."Line Loop No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line/Loop No. field.';
                }
            }
            group(" ")
            {
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    Caption = 'Responsibility Center';
                }
                field("Warranty Expires on"; Rec."Warranty Expires on")
                {
                    ApplicationArea = All;
                    Caption = 'Warranty Expires on';
                }
                field("Main Asset Component"; Rec."Main Asset Component")
                {
                    ApplicationArea = All;
                    Caption = 'Main Asset Component';
                }
                field("Manufacturer Code"; Rec."Manufacturer Code")
                {
                    ApplicationArea = All;
                    Caption = 'Manufacturer Code';
                }
                field("Sbu Code"; Rec."Sbu Code")
                {
                    ApplicationArea = All;
                    Caption = 'Sbu Code';
                }
                field("Sbu2 Code"; Rec."Sbu2 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Sbu2 Code';
                }
                field("PO Number"; Rec."PO Number")
                {
                    ApplicationArea = All;
                    Caption = 'PO Number';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor No.';
                }
                field("Vendor Description"; Rec."Vendor Description")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor Description';
                }
            }
            group("")
            {
                field("Route Code"; Rec."Route Code")
                {
                    ApplicationArea = All;
                    Caption = 'Route.';
                }
                field(Instrumentation; Rec.Instrumentation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instrumentation field.';
                }
                field("Junction Box No."; Rec."Junction Box No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Junction Box No. field.';
                }
                field("Calibration Range"; Rec."Calibration Range")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Calibration Range field.';
                }
                field("Modified By"; Rec."Modified By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Modified By field.';
                }
                field("Installation Date"; Rec."Installation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Installation Date field.';
                }
                field("Purchase Price"; Rec."Purchase Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Price field.';
                }
                field("Priority Code"; Rec."Priority Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Priority Code field.';
                }
                field("Show In FA"; Rec."Show In FA")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Show In FA field.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Date Modified field.';
                }
            }
            group("   ")
            {
                field("Under Maintenance"; Rec."Under Maintenance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Under Maintenance field.';
                }
                field(Lubricant; Rec.Lubricant)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lubricant field.';
                }
                field("Parent Equipment Department"; Rec."Parent Equipment Department")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent Equipment Department field.';
                }
                field("Additional Info"; Rec."Additional Info")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Additional Info field.';
                }
                field("Next Service Date"; Rec."Next Service Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next Service Date field.';
                }
                field("Parent Equipment No."; Rec."Parent Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Parent Equipment No. field.';
                }
            }
            /*      part(EquipBOM; "Maintenance BOM Line")
                  {
                      ApplicationArea = All;
                      UpdatePropagation = Both;
                      SubPageLink = "FA No." = field("FA No.");
                  }
                  */
            part(EquipmentBillOfMaterils; "CMMS Equipment BOM Subform")
            {
                ApplicationArea = All;
                UpdatePropagation = Both;
                SubPageLink = "Equipment No." = field("No."), "FA No." = field("FA No.");
                Visible = true;
            }
            // Main Asset Components
            part(EquipComponent; "CMMS Equipment Components List")
            {
                ApplicationArea = All;
                UpdatePropagation = Both;
                SubPageLink = "FA No." = field("No.");
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}