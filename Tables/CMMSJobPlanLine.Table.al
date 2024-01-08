table 59014 "Job Plan Line2"
{
    Caption = 'Job Plan Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Job Plan No."; Code[20])
        {
            Caption = 'Job Plan No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Job Plan Description';
            Editable = false;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }

        field(4; "Task No."; Code[20])
        {
            Caption = 'Task No.';
            //  TableRelation = "CMMS Task Master" where("Asset Sub Class Code" = filter('EQUIPMENT'));
            TableRelation = "CMMS Task Master"; // Changes Done by Patric on 11-Dec-2023
            trigger OnValidate()

            Begin
                if TaskRec.Get("Task No.") then Begin
                    "Task Description" := TaskRec."Task Description";
                    Duration := TaskRec."Task Duration";
                End;
                "Job Plan Status" := "Job Plan Status"::Open;

                // Updating the Job Plan Description in Job Plan Line Table 

                JobPlanHead.Reset();
                JobPlanHead.SetRange("No.", "Job Plan No.");
                if JobPlanHead.FindFirst() then Begin
                    Description := JobPlanHead.Description;
                End

            End;

        }
        field(5; "Task Description"; Text[100])
        {
            Caption = 'Task Description';
            Editable = false;
        }
        field(6; "Seq.No"; Integer)
        {
            Caption = 'Seq.No';
        }
        field(7; Duration; Integer)
        {
            Caption = 'Standard Duration';
            Editable = false;
        }

        // Defining the Resource to the Task with Duration and Cost

        field(8; "Resource ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource ID';
            TableRelation = Resource; // where(Type=filter(Person));
            trigger OnValidate()
            Begin
                if ResourceRec.Get("Resource ID") then Begin
                    "Resource Type" := ResourceRec.Type;
                    "Resource Name" := ResourceRec.Name;
                    "Base UOM" := ResourceRec."Base Unit of Measure";
                    "Unit Price" := ResourceRec."Unit Price";
                End

            End;

        }
        field(9; "Resource Type"; Enum "Resource Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource Type';
            Editable = false;
        }
        field(10; "Resource Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource Name';
            Editable = false;
        }
        field(11; "Base UOM"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Base UOM';
            Editable = false;
        }
        field(12; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit Price';
            Editable = false;
        }
        field(13; "Job Plan Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Job Plan Status';
        }
    }

    keys
    {
        key(Key1; "Job Plan No.", "Task No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Job Plan No.", Description, "Task No.", "Task Description", Duration, "Job Plan Status")
        {

        }

    }

    var
        TaskRec: Record "CMMS Task Master";
        ResourceRec: Record Resource;
        JobPlanHead: Record "Job Plan Header2";

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin
        TestField("Job Plan Status", "Job Plan Status"::Open);
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}