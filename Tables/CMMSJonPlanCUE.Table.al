table 59016 "CMMS Job Plan CUE"
{
    DataClassification = ToBeClassified;
    Caption = 'Job Plan CUE';

    fields
    {
        field(1; "JPlan No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Job Plan No.';
        }
        field(2; "Total Job Plan"; Integer)
        {
            Caption = 'Total Job Plan No.';
            FieldClass = FlowField;
            CalcFormula = count("Job Plan Header2");
        }
        field(3; "Total Open JP"; Integer)
        {
            Caption = 'OPEN Job Plans';
            FieldClass = FlowField;
            CalcFormula = count("Job Plan Header2" where("Job Plan Status" = filter('Open')));
        }
        field(4; "Total Approved JP"; Integer)
        {
            Caption = 'APPROVED Job Plan';
            FieldClass = FlowField;
            CalcFormula = count("Job Plan Header2" where("Job Plan Status" = filter('Approved')));
        }
        field(5; "Total Scheduled JP"; Integer)
        {
            Caption = 'Total SCHEDULED Job Plan';
            FieldClass = FlowField;
            CalcFormula = count("Job Plan Header2" where("Job Plan Status" = filter('Scheduled')));
        }
        field(6; "Total Under Maintenance"; Integer)
        {
            Caption = 'Total UNDER MAINTENANCE Job Plan';
            FieldClass = FlowField;
            CalcFormula = count("Job Plan Header2" where("Job Plan Status" = filter('Under Maintenance')));
        }
        field(7; "Total Closed JP"; Integer)
        {
            Caption = 'Total CLOSED Job Plan';
            FieldClass = FlowField;
            CalcFormula = count("Job Plan Header2" where("Job Plan Status" = filter('Closed')));
        }
    }

    keys
    {
        key(PK; "JPlan No.")
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