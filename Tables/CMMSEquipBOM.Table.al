table 59015 "CMMS Equipment BOM"
{
    DataClassification = ToBeClassified;
    Caption = 'Equipment Bill of Materials';

    fields
    {
        field(1; "Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment No.';
            //TableRelation = "CMMS Equipment Master";    // Updated on 27-11-2023 by Patric
            TableRelation = "CMMS Asset"; // Modified on 6-Dec-2023 by Patric - Request from TECSA
            trigger OnValidate()                        // Updated on 27-11-2023 by Patric
            Begin                                      // Updated on 27-11-2023 by Patric
                // "FA No." := "Equipment No.";        // Updated on 27-11-2023 by Patric
            End;                                    // Updated on 27-11-2023 by Patric
        }
        field(2; "FA No."; Code[20])
        {
            Caption = 'Equipment';
            //       TableRelation = "Fixed Asset" where(Equipment = filter(true));   // Updated on 27-11-2023 by Patric
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
            trigger OnValidate()
            var
                ItemRec: Record Item;
            Begin
                if ItemRec.Get("Item No.") then begin
                    Description := ItemRec.Description;
                    "Base UOM" := ItemRec."Base Unit of Measure";
                end;
            End;

        }
        field(5; "Description"; Text[100])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(6; "Base UOM"; Code[10])
        {
            Caption = 'Base BOM';
            Editable = false;
        }
        field(7; "Quantity Per"; Decimal)
        {
            Caption = 'Quantity Per';
        }
        field(8; Remarks; Text[250])
        {
            Caption = 'Remarks';
        }
    }

    keys
    {
        key(PK; "Equipment No.", "FA No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Equipment No.", "FA No.", "Line No.", "Item No.", Description)
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