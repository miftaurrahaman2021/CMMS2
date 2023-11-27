table 59018 "CMMS Equipment Master"
{
    // DataClassification = ToBeClassified;
    Caption = 'Equipment Master';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Master Equip No.';
            trigger OnValidate()
            Begin
                if "No." <> xRec."No." then Begin
                    CMMSSetup.Get();
                    NoSeriesMgt.TestManual(CMMSSetup."Equipment Master No.");
                    "No." := '';
                End
            End;
        }
        field(2; "FA No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment No.';

            //   TableRelation = "Fixed Asset" where("FA Subclass Code" = filter('EQUIPMENT'));
            //   This is the New Requirement from TECSA Vijaindran on 27-11-2023 No Link with Fixed Assets
            /*       TableRelation = "Fixed Asset" where(Equipment = filter(true));
                   trigger OnValidate()
                   var
                       FAAssetRec: Record "Fixed Asset";
                   Begin
                       if FAAssetRec.Get("FA No.") then
                           "Equipment Description" := FAAssetRec.Description;
                       "FA Location Code" := FAAssetRec."FA Location Code";
                       "Equipment Status" := FAAssetRec.Inactive;
                       "Search Description" := FAAssetRec."Search Description";
                       "Serial No." := FAAssetRec."Serial No.";
                       "Main Asset Component" := FAAssetRec."Component of Main Asset";
                   End;
                   */
        }
        field(3; "Equipment Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Description';
            //  Editable = false;
        }
        field(4; "Equipment Category"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Class/Category';
        }
        field(5; "FA Location Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'FA Location Code';
            TableRelation = "FA Location";
            //   Editable = false;
        }
        field(6; "Model No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Model No.';
        }
        field(7; OEM; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'OEM';
        }
        field(8; "PID No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'P&ID No.';
        }
        field(9; "Equipment Status"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }
        field(10; "Search Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Search Description';
        }
        field(11; Criticality; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Criticality';
            TableRelation = "CMMS Criticality";
        }
        field(12; "Equipment Area"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Area';
        }
        field(13; "Serial No."; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Serial No.';
        }
        field(14; "Process Fluid"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Process Fluid';
        }
        field(15; "Line Loop No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Line/Loop No.';
        }
        field(16; "Responsibility Center"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(17; "Warranty Expires on"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Warranty Expires on';
        }
        field(18; "Main Asset Component"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Main Asset/Component';
            TableRelation = "Main Asset Component";
            trigger OnValidate()
            var
                MainAssetCompRec: Record "Main Asset Component";
            Begin
                if MainAssetCompRec.Get("Main Asset Component") then
                    "Manufacturer Code" := MainAssetCompRec."Manufacturer Code";
                "Vendor No." := MainAssetCompRec."Vendor No.";
            End;
        }
        field(19; "Manufacturer Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Manufacturer Code';
        }
        field(20; "Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Vendor No.';
            TableRelation = Vendor;
            trigger OnValidate()
            var
                VendorRec: Record Vendor;
            Begin
                if VendorRec.Get("Vendor No.") then
                    "Vendor Description" := VendorRec.Name;
            End;
        }
        field(21; "Vendor Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Vendor Description';
        }
        field(22; "PO Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PO Number';
        }
        field(23; "Sbu Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Sbu Code';
        }
        field(24; "Sbu2 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Sbu2 Code';
        }
        field(25; "Route Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Route.';
            TableRelation = "CMMS Routes Line";
        }
        field(26; Instrumentation; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Instrumentation';
        }
        field(27; "Junction Box No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Junction Box No.';
        }
        field(28; "Calibration Range"; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Calibration Range';
        }
        field(29; "Modified By"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Modified By';
        }
        field(30; "Installation Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Installation Date';
        }
        field(31; "Purchase Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Purchase Price';
        }
        field(32; "Priority Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Priority Code';
        }
        field(33; "Show In FA"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Show In FA';
        }
        field(34; "Last Date Modified"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Date Modified';
        }
        field(35; "Under Maintenance"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Under Maintenance';
        }
        field(36; Lubricant; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Lubricant';
            TableRelation = item where("Item Category Code" = filter('LUB'));
        }
        field(37; "Parent Equipment Department"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Parent Equipment Department';
        }
        field(38; "Additional Info"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Additional Info';
        }
        field(39; "Next Service Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Next Service Date';
        }
        field(40; "Parent Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Parent Equipment No.';
        }
    }

    keys
    {
        key(Key1; "No.", "FA No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Equipment Description", "FA No.", "FA Location Code")
        {

        }
    }

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        CMMSSetup: Record "CMMS Setup2";

    trigger OnInsert()
    begin
        if "No." = '' then Begin
            CMMSSetup.Get();
            CMMSSetup.TestField("Equipment Master No.");
            "No." := NoSeriesMgt.GetNextNo(CMMSSetup."Equipment Master No.", WorkDate, true);
        End;
        "FA No." := "No.";                    // Updated on 27-11-2023 by Patric
        "Equipment Status" := true;           // Updated on 27-11-2023 by Patric
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}