table 59000 "Employee Category"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee Category Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Category';
        }
        field(2; "Employee Category Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Category Name';
        }
    }

    keys
    {
        key(PK; "Employee Category Code")
        {
            Clustered = true;
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