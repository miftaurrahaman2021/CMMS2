table 59024 "CMMS Task Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Code';
        }
        field(2; "Task Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Description';
        }
        field(3; "Task Duration"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Std.Time. Minutes)';
        }
        field(4; "Asset Sub Class Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Asset Sub Class';
            TableRelation = "FA Subclass";
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
        fieldgroup(DropDown; "No.", "Task Description", "Task Duration")
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