table 59011 "Asset Work Order History"
{
    Caption = 'Asset Work Order History';

    fields
    {
        field(1; "FA No."; Code[20])
        {
            Caption = 'FA No.';
        }
        field(2; "Work Order No."; Code[20])
        {
            Caption = 'Work Order No';
        }
        field(3; "Work Order Date"; Date)
        {
            Caption = 'Work Order Date';
        }
        field(4; "Work Order Description"; Text[100])
        {
            Caption = 'Work Order Description';
        }
        field(5; "Work Order Type"; Code[20])
        {
            Caption = 'Work Order Type';
        }
        field(6; "Requested By"; Code[20])
        {
            Caption = 'Requested By';
        }
        field(7; "WO Sch.Start Date"; date)
        {
            Caption = 'Work Order Schedule Start Date';
        }
        field(8; "WO Actual Start Date"; date)
        {
            Caption = 'Work Order Actual Start Date';
        }
        field(9; "WO Close Date"; date)
        {
            Caption = 'Work Order Close Date';
        }
        field(10; Priority; Code[10])
        {
            Caption = 'Priority';
        }
        field(11; "Observation Action"; Text[250])
        {
            Caption = 'Observation / Action';
        }

    }

    keys
    {
        key(Key1; "FA No.")
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