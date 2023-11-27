table 59020 "CMMS Criticality"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Criticality Code';
        }
        field(2; "Criticality Description"; Text[20])
        {
            Caption = 'Criticality';
        }
        field(3; Comment; Text[100])
        {
            Caption = 'Comment';
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
        fieldgroup(DropDown; "No.", "Criticality Description")
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