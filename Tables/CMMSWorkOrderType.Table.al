table 59009 "CMMS WorkOrder Type"
{
    DataClassification = ToBeClassified;
    Caption = 'Work Order Type';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Type Code';
        }
        field(2; "Work Order Type"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Type';
        }
    }

    keys
    {
        key(PK; "No.", "Work Order Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Work Order Type")
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