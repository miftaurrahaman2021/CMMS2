table 59019 "CMMS Setup2"
{
    DataClassification = ToBeClassified;
    Caption = 'Maintenance Setup';

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Primary Key';
        }
        field(2; "Equipment Master No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Master No.';
            TableRelation = "No. Series";
        }
        field(3; "Route Nos."; Code[20])
        {
            Caption = 'Route No.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(4; "Preventive Maintenance Nos."; Code[20])
        {
            Caption = 'Preventive Maintenance Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(5; "Work Order Nos."; Code[20])
        {
            Caption = 'Work Order Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(6; "CM Work Order Nos."; Code[20])
        {
            Caption = 'CM Work Order Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(7; "Job Plan Nos."; Code[20])
        {
            Caption = 'Job Plan Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }

    }

    keys
    {
        key(Key1; "Primary Key")
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