table 59022 "Solution Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Solution Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solution Code';
        }
        field(2; "Solution Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solutions';
        }
        field(3; "Solution Process Steps"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solution Process Steps';
        }
    }

    keys
    {
        key(Key1; "Solution Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Solution Code", "Solution Description")
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