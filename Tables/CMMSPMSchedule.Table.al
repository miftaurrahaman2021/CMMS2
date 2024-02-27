table 59010 "CMMS PM Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'PM Schedle';
    DrillDownPageId = "Work Order Lists";
    LookupPageId = "Work Order Lists";

    fields
    {
        field(1; "PM No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Code';
        }
        field(2; "PM Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Description';
        }
        field(3; "PM Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Equipment No.';
        }
        field(4; "PM Equip.Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Equip.Description';
            Editable = false;
        }
        field(5; "PM Routes No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Routes No.';
        }
        field(6; "PM Routes Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Routes Name';
        }
        field(7; "PM Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Status';

        }
        field(8; "PM First Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'PM First Start Date';
        }
        field(11; "PM Work Order Status"; Enum "Work Order Status")
        {
            Caption = 'Work Order Status';
            //    TableRelation = "CMMS Work Order Status";
        }
        field(12; "PM Work Order Type"; Code[20])
        {
            Caption = 'Work Order Type';
            TableRelation = "CMMS WorkOrder Type";
        }
        field(13; "PM Work Order Priority"; Code[10])
        {
            Caption = 'Work Order Priority';
        }
        field(14; "PM Supervisor"; Code[20])
        {
            Caption = 'Supervisor';
            TableRelation = Resource;
        }
        field(15; "PM Craft"; Code[20])
        {
            Caption = 'Craft';
            TableRelation = "Resource Skill";
        }

        field(16; "Work Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order No.';
        }

        field(17; "Work Order Date"; Date)              // This is For CM WorkOrder created 27-11-2023 Patric
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Date';
        }
        field(18; "Work Order Start Date"; Date)      // This is For CM WorkOrder created 27-11-2023 Patric
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Start Date';
        }
        field(19; "Work Order End Date"; Date)    // This is For CM WorkOrder created 27-11-2023 Patric
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Completion Date';
        }
        field(20; "Plant Code"; Code[20])       // Modified by Patric on 12-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Plant';
        }
        field(21; "Section Code"; Code[20])  // Modified by Patric on 12-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Section';
        }
        field(22; "Cost Center Code"; Code[20])  // Modified by Patric on 12-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Cost Center';
        }
        field(23; "Posting Group"; Code[20])  // Modified by Patric on 12-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Posting Group';
            TableRelation = "Job Posting Group";  //TECSA Change Request on 19-Dec-2023
            trigger OnValidate()
            var
                JobGLPostRec: Record "Job Posting Group";
            Begin
                JobGLPostRec.Reset();
                JobGLPostRec.SetRange(Code, Rec."Posting Group");
                If JobGLPostRec.FindFirst() then Begin
                    "GL Account Code" := JobGLPostRec."G/L Costs Applied Account";
                    "Bal. GL Account" := JobGLPostRec."Item Costs Applied Account";
                End;
            End;
        }
        field(24; "Remarks 1"; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description of Work Order';

        }
        field(25; "Remarks 2"; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'Observation & Action';
        }

        // Modified by Patric on 12-Dec-2023
        field(26; "GL Account Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'GL Account Code';
            Editable = false;
        }
        field(27; "Bal. GL Account"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Bal. G/L Account';
            Editable = false;
        }

        //***************** *********************




        // Route Line Information 

        field(31; "RL Route No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Route Code Line';
        }
        field(32; "RL Route Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Name';
        }
        field(33; "RL Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Line No';
        }
        field(34; "RL Equip. No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Equip.No';
        }
        field(35; "RL JP No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP No.';
        }
        field(36; "RL JP Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Name';
        }
        field(37; "RL Task No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Task No.';
        }
        field(38; "RL Task Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Task Name';
        }
        field(39; "RL JP SqNo"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Seq.No';
        }
        field(40; "RL JP Task Time"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Task Time';
        }
        field(41; "RL Route Ramarks"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Remarks';
        }
        field(42; "RL Resource Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Code';
        }
        field(43; "RL Resource Type"; Enum "Resource Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Type';
        }
        field(44; "RL Resource Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Name';
        }
        field(45; "RL BOM"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL BOM';
        }
        field(46; "RL Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Unit Price';
        }
        field(47; "RL Route Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Status';
        }
        field(52; FDH; Duration)
        {
            Caption = 'Frequency In Hours';
        }
        field(53; FDWMQY; Integer)
        {
            Caption = 'Frequency (Days)';
        }
        field(54; "Next PM Due Date"; Date)
        {
            Caption = 'Next PM Due Date';
        }
        field(55; "PM Sch No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Scheduler No.';
        }
        field(51; "Work Order Completion Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Completion Date';

        }
        field(58; "Work Order Type"; Enum "Work Order Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Type';
        }
        /*   field(59; "HOD Approval"; Boolean)
          {
              DataClassification = ToBeClassified;
              Caption = 'Department Head Approval';
          }
          field(60; "Store Department Approval"; Boolean)
          {
              DataClassification = ToBeClassified;
              Caption = 'Store Department Head Approval';
          } */
        field(61; "HOD Approval Status"; Enum "Request Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Department Head Approval Status';
        }
        field(62; "Store Approval Status"; Enum "Request Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Store Approval Status';
        }
        field(63; "Failure Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Failure Code';
            TableRelation = "Failure Class";
            trigger OnValidate()
            var
                FailureRec: Record "Failure Class";
            Begin
                FailureRec.Reset();
                if FailureRec.Get("Failure Code") then
                    Rec."Failure Description" := FailureRec.Description;
            End;
        }
        field(64; "Failure Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Failure Description';
            Editable = false;
        }

        //TECSA Change Request on 19-Dec-2023
        field(66; "Solution Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solution Code';
            TableRelation = "Solution Master";
            trigger OnValidate()
            var
                SolutionRec: Record "Solution Master";
            begin
                SolutionRec.Reset();
                if SolutionRec.Get("Solution Code") then
                    Rec."Solution Description" := SolutionRec."Solution Description";
            end;
        }
        field(67; "Solution Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solutions';
            Editable = false;
        }
        field(68; "Cause Code"; Code[20])  //TECSA Change Request on 21-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Cause Code';
            TableRelation = "Cause Master";
            trigger OnValidate()
            var
                CuaseRec: Record "Cause Master";
            Begin
                CuaseRec.Reset();
                if CuaseRec.Get("Cause Code") then
                    Rec."Cause Description" := CuaseRec."Cause Description";
            End;
        }
        field(69; "Cause Description"; Text[100])  //TECSA Change Request on 21-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Cause Description';
            Editable = false;
        }
        field(101; "User ID"; Code[20])
        {
            DataClassification = EndUserIdentifiableInformation;
            Caption = 'Created By';
        }

    }

    keys
    {
        //   key(PK; "PM No.", "PM Description", "PM Equipment No.", "PM Equip.Description", "PM Routes No.", "PM Status")
        key(PK; "PM No.", "RL Route Status", "RL Equip. No", "RL Task No", "PM Sch No.")
        {
            Clustered = true;
        }
        key(PK1; "RL Equip. No", "PM Sch No.")
        {

        }
        key(PK2; "Work Order No.", "Work Order Type")
        {

        }

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        T: Record "Requisition Line";

    trigger OnInsert()
    begin
        "Work Order Date" := WorkDate();
        "User ID" := UserId;
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