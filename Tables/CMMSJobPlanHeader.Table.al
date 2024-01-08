table 59013 "Job Plan Header2"
{
    DataClassification = CustomerContent;
    DataCaptionFields = "No.", Description;
    Caption = 'Job Plan Header';


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Job Plan No.';
        }
        field(2; "Description"; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Duration; Integer)
        {
            Caption = 'Duration';
            FieldClass = FlowField;
            CalcFormula = sum("Job Plan Line2".Duration where("Job Plan No." = field("No.")));
            Editable = false;
        }
        field(4; "Job Plan Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Job Plan Status';
        }
    }

    keys
    {
        //     key(Key1; "No.", "Job Plan Status")
        key(Key1; "No.")            // Modified by Patric on 12-Dec-2023
        {
            Clustered = true;
        }
        key(SK1; "Job Plan Status")
        {

        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Duration, "Job Plan Status")
        {

        }
    }

    var
        JobPlanLine: Record "Job Plan Line2";

    trigger OnInsert()
    var
        NosMgt: Codeunit NoSeriesManagement;
        QCSetup: Record "CMMS Setup2";
    begin
        "Job Plan Status" := "Job Plan Status"::Open;
        if Rec."No." = '' then begin
            QCSetup.Get();
            QCSetup.TestField("Job Plan Nos.");
            Rec."No." := NosMgt.GetNextNo(QCSetup."Job Plan Nos.", WorkDate(), true);
        end;
    end;

    trigger OnModify()
    begin
        TestField(Rec."Job Plan Status", Rec."Job Plan Status"::Open);
    end;

    trigger OnDelete()
    begin
        TestField("Job Plan Status", "Job Plan Status"::Open);
        JobPlanLine.Reset();
        JobPlanLine.SetRange("Job Plan No.", Rec."No.");
        If JobPlanLine.FindSet() then
            JobPlanLine.DeleteAll();
    end;

    trigger OnRename()
    begin

    end;

}