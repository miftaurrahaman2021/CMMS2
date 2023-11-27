table 59003 "Overtime Request"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Request ID';
        }
        field(2; Date; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Request Date';
        }
        field(3; "Employee ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Employee ID';
            TableRelation = Employee where(Status = filter(Active));
            trigger OnValidate()
            var
                EmployeeRec: Record Employee;
            Begin
                EmployeeRec.SetRange("No.", "Employee ID");
                if EmployeeRec.FindFirst() then Begin
                    "Employee Name" := EmployeeRec."First Name" + EmployeeRec."Middle Name" + EmployeeRec."Last Name";
                    "Department Code" := EmployeeRec."Department Code";
                    "Job Title" := EmployeeRec."Job Title";
                End

            End;
        }
        field(4; "Employee Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Employee Name';
            Editable = false;
        }
        field(5; "Department Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Department Code';
            Editable = false;
        }
        field(6; "Job Title"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Job Title';
            Editable = false;
        }
        field(7; "Pay Grade"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Pay Grade';
        }
        field(8; "OT Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Overtime Type Code';
            TableRelation = "Overtime Type";
            trigger OnValidate()
            var
                OTTypeRec: Record "Overtime Type";
            begin
                if OTTypeRec.Get("OT Type Code") then
                    "Hourly Time" := OTTypeRec."Hourly Time";
                "OT Debit Account" := OTTypeRec."Account Map Dr.";
                "OT Credit Account" := OTTypeRec."Account Map Cr.";
                "OT Vat Account" := OTTypeRec."Vat Account";

                //    "Hourly Time" := 0.00;
            end;

        }
        field(9; "Hourly Time"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Hourly Time';
            DecimalPlaces = 2 : 2;
        }
        field(10; "OT Start Date Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Start Date&Time';
        }
        field(11; "OT End Date Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime End Date&Time';
            trigger OnValidate()
            begin
                "Total Overtime" := "OT End Date Time" - "OT Start Date Time";
            end;
        }
        field(12; "Total Overtime"; Duration)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Overtime Hours';
            Editable = false;
        }
        field(13; "Request Status"; Enum "Request Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Request Status';
            Editable = false;
        }
        field(14; "Task Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Description';
        }
        field(15; "OT Debit Account"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Debit Acoount';
            Editable = false;
        }
        field(16; "OT Credit Account"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Credit Account';
            Editable = false;
        }
        field(17; "OT Vat Account"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'VAT Account'; // This will be on Credit Side of the Journal
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.", Date, "OT Type Code")
        {
            Clustered = true;
        }
    }

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        MySetupRec: Record "My Setup";

    trigger OnInsert()
    begin
        Date := WorkDate();
        "Request Status" := "Request Status"::Open;
        if "No." = '' then Begin
            MySetupRec.Get();
            MySetupRec.TestField("Overtime Req.No");
            "No." := NoSeriesMgt.GetNextNo(MySetupRec."Overtime Req.No", WorkDate, true);
        End


    end;

    trigger OnModify()
    begin
        TestField(Rec."Request Status", Rec."Request Status"::Open);
    end;

    trigger OnDelete()
    begin
        TestField(Rec."Request Status", Rec."Request Status"::Open);
    end;

    trigger OnRename()
    begin
        TestField(Rec."Request Status", Rec."Request Status"::Open);
    end;

}