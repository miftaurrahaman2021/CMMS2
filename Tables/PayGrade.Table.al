table 59005 "Pay Grade"
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Pay Grade';

    fields
    {
        field(1; "Grade Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Grade Code';
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Grade Description';
        }
        field(3; "Gross Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Gross Salary';
            DecimalPlaces = 2 : 2;
            trigger OnValidate()
            var
            begin
                "Grade Net Pay" := ("Gross Salary" + "Gross Incentive" + Minha + "Gov.Minha");
            end;
        }
        field(4; "Gross Incentive"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Gross Incentive';
            DecimalPlaces = 2 : 2;
            trigger OnValidate()
            var
            begin
                "Grade Net Pay" := ("Gross Salary" + "Gross Incentive" + Minha + "Gov.Minha");
            end;
        }
        field(5; "Minha"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Minha';
            DecimalPlaces = 2 : 2;
            trigger OnValidate()
            var
            begin
                "Grade Net Pay" := ("Gross Salary" + "Gross Incentive" + Minha + "Gov.Minha");
            end;
        }
        field(6; "Gov.Minha"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Government Minha';
            DecimalPlaces = 2 : 2;
            trigger OnValidate()
            var
            begin
                "Grade Net Pay" := ("Gross Salary" + "Gross Incentive" + Minha + "Gov.Minha");
            end;
        }
        field(7; "Grade Net Pay"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Grade Net Pay';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Grade Code")
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