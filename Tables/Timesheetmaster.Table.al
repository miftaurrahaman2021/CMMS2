table 59001 "Timesheet Master"
{
    // This is developed by JP on 24-Sep-2023
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Timesheet Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Timesheet Code';
        }
        field(2; "Timesheet Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Timesheet Description';
        }
        field(3; "Start Working Hours"; Time)
        {
            DataClassification = ToBeClassified;
            Caption = 'Start Working Hours';
        }
        field(4; "End Working Hours"; Time)
        {
            DataClassification = ToBeClassified;
            Caption = 'End Working Hours';
            trigger OnValidate()
            begin
                "Actual Working Hours" := ("End Working Hours" - "Start Working Hours");
            end;
        }
        field(5; "Overtime Type"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Type';
            TableRelation = "Overtime Type" where("OT Type Status" = filter(Active));
            trigger OnValidate()
            var
                OvertimeTypeRec: Record "Overtime Type";
            begin
                if OvertimeTypeRec.Get("Overtime Type") then
                    "Overtime Hour" := OvertimeTypeRec."Hourly Time"
                else
                    "Overtime Hour" := 0;
            end;

        }
        field(6; "Overtime Hour"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Hour';
        }
        field(7; "Actual Working Hours"; Duration)
        {
            DataClassification = ToBeClassified;
            Caption = 'Actual Working Hours';
            Editable = false;
        }
        field(8; "Timesheet Status"; Enum "General Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Timesheet Status';
        }

    }

    keys
    {
        key(PK; "Timesheet Code", "Overtime Type")
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