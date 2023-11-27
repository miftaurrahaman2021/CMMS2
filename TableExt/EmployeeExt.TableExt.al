tableextension 59000 "Employee Ext" extends Employee
{
    fields
    {
        // This Table extension will add additional field required in the Employee Card Table
        // The Field is Added by JP on 24-Sep-2023

        field(59000; "Department Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Department Code';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1), "Dimension Value Type" = filter(Standard));
            trigger OnValidate()
            var
                DimValue: Record "Dimension Value";
                GenLedgSetup: Record "General Ledger Setup";
            begin
                GenLedgSetup.Get();
                DimValue.Reset();
                DimValue.SetRange("Dimension Code", GenLedgSetup."Global Dimension 1 Code");
                DimValue.SetRange(Code, "Department Code");
                if DimValue.FindFirst() then
                    "Department Name" := DimValue.Name
                else
                    "Department Name" := '';
            end;
        }
        field(59001; "Department Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department Name';
            Editable = false;
        }
        field(59002; "Responsibility Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Responsibility Code';
            TableRelation = "Responsibility Center";
            trigger OnValidate()
            var
                RespCentr: Record "Responsibility Center";
            Begin
                if RespCentr.Get("Responsibility Code") then
                    "Responsibility Name" := RespCentr.Name
            End;
        }
        field(59003; "Responsibility Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Responsibility Center Name';
            Editable = false;
        }
        field(59004; "Employee Category Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Category Code';
            TableRelation = "Employee Category";
        }
        field(59005; "Pay Grade Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Grade Code';
            TableRelation = "Pay Grade";
        }


    }

    var

}