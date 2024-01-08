table 50157 "Work Order CUE"    // Modified by Patric on 13-Dec-2023
{
    DataClassification = ToBeClassified;
    Caption = 'Work Order CUE';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order';
        }
        field(2; "Total WO"; Integer)
        {
            Caption = 'Total Work Order';
            FieldClass = FlowField;
            CalcFormula = count("CMMS PM Schedule");
        }
        field(3; "PM WO"; Integer)
        {
            Caption = 'Preventive Maintenance Work Order';
            FieldClass = FlowField;
            CalcFormula = count("CMMS PM Schedule" where("Work Order Type" = filter('PM')));
        }
        field(4; "CM WO"; Integer)
        {
            Caption = 'Corrective Maintenance Work Order';
            FieldClass = FlowField;
            CalcFormula = count("CMMS PM Schedule" where("Work Order Type" = filter('CM')));
        }
        field(5; "HOD Pending WO"; Integer)
        {
            Caption = 'HOD Pending Work Order';
            FieldClass = FlowField;
            CalcFormula = count("CMMS PM Schedule" where("HOD Approval Status" = filter('Pending Approval')));
        }
        field(6; "Store Pending WO"; Integer)
        {
            Caption = 'STORE Pending Work Order';
            FieldClass = FlowField;
            CalcFormula = count("CMMS PM Schedule" where("Store Approval Status" = filter('Pending Approval')));
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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