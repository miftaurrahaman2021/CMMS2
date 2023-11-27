table 59025 "CMMS Equipment CUE"
{
    DataClassification = ToBeClassified;
    Caption = 'Equipment CUE';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Eauipment';
        }
        field(2; "Total Equipment"; Integer)
        {
            Caption = 'Total Equipment';
            FieldClass = FlowField;
            CalcFormula = count("CMMS Equipment Master");
        }
        field(3; "Total Active Equipment"; Integer)
        {
            Caption = 'Total Active Equipments';
            FieldClass = FlowField;
            CalcFormula = count("CMMS Equipment Master" where("Equipment Status" = filter(true)));
        }
        field(4; "Total InActive Equipment"; Integer)
        {
            Caption = 'Total InActive Equipments';
            FieldClass = FlowField;
            CalcFormula = count("CMMS Equipment Master" where("Equipment Status" = filter(false)));
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