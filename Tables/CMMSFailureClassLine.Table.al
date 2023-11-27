table 59023 "CMMS Failure Clas Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Failure Class Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Failure Class Code';
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No.';
        }
        field(3; "Cause Code"; Code[20])
        {
            Caption = 'Cause Code';
            TableRelation = "Cause Master";
        }
        field(4; "Remedy Code"; Code[20])
        {
            Caption = 'Remedy Code';
            TableRelation = "Solution Master";
        }

    }

    keys
    {
        key(Key1; "Failure Class Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Failure Class Code", "Cause Code", "Remedy Code")
        {

        }
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