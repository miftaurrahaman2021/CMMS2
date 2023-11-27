table 59008 "CMMS Work Order Status"
{
    DataClassification = ToBeClassified;
    Caption = 'Work Order Status';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Status Code';
        }
        field(2; "Work Order Status"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Status';
        }
        field(3; "Work Order Seq."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Seq.No';
        }
    }

    keys
    {
        key(PK; "No.", "Work Order Status", "Work Order Seq.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Work Order Status")
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