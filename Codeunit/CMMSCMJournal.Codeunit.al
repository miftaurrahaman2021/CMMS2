codeunit 51000 "CM Transfer Journal Line"       // Correcitive Maintenance Journal Line (Creded on 18-Feb-2024)
{
    Permissions = tabledata "G/L Account" = r;
    Access = Internal;

    trigger OnRun()
    Begin
    End;

    procedure CreateCMWordOrderJournal(CMWorkOrderCard: Record "CMMS PM Schedule")
    var
        Text001: Label '%1 %2 does not exist';
        GenJnlLine2: Record "Gen. Journal Line";
        GenJnlLine: Record "Gen. Journal Line";
        GEnJournalTemplate: Record "Gen. Journal Template";
        GenJournalBatch: Record "Gen. Journal Batch";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        LastDocNo: Code[20];
        DimMgt: Codeunit DimensionManagement;
        ShortCutDimension: array[7] of Code[20];
        CMMSSetup: Record "CMMS Setup2";
        NoSeries: Record "No. Series";
        UserSetup: Record "User Setup";
        CMItemBOM: Record "CMMS Equipment BOM";

    Begin
        CMMSSetup.Get();
        CMMSSetup.TestField("WO Gen. Jnl Template");
        CMMSSetup.TestField("WO Gen. Jnl Batch");

        if not GEnJournalTemplate.Get(CMMSSetup."WO Gen. Jnl Template") then
            Error(Text001, GEnJournalTemplate.TableCaption, CMMSSetup."WO Gen. Jnl Template");

        if not GenJournalBatch.Get(CMMSSetup."WO Gen. Jnl Template", CMMSSetup."WO Gen. Jnl Batch") then
            Error(Text001, CMMSSetup."WO Gen. Jnl Template", CMMSSetup."WO Gen. Jnl Batch");
        //    GenJournalBatch.TestField("No. Series");
        LastDocNo := '';
        CMItemBOM.Reset();
        CMItemBOM.SetRange(CMItemBOM."Equipment No.", CMWorkOrderCard."PM Equipment No.");
        if CMItemBOM.FindSet() then
            repeat
                GenJnlLine.Init();
                GenJnlLine.Validate("Journal Template Name", GEnJournalTemplate.Name);
                GenJnlLine.Validate("Journal Batch Name", GenJournalBatch.Name);
                GenJnlLine2.SetRange("Journal Template Name", GEnJournalTemplate.Name);
                GenJnlLine2.SetRange("Journal Batch Name", GenJournalBatch.Name);
                if GenJnlLine2.FindLast() then
                    GenJnlLine.Validate("Line No.", GenJnlLine2."Line No." + 10000)
                else
                    GenJnlLine.Validate("Line No.", 10000);
                GenJnlLine.Validate("Posting Date", WorkDate());
                GenJnlLine.Validate("Document Date", CMWorkOrderCard."Work Order Completion Date");
                GenJnlLine."Document No." := CMWorkOrderCard."Work Order No.";
                GenJnlLine.Insert(true);

                GenJnlLine."External Document No." := CMWorkOrderCard."Work Order No.";
                GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::"G/L Account");
                GenJnlLine.Validate("Account No.", CMWorkOrderCard."GL Account Code");
                GenJnlLine.Validate(Amount, 10200);
                GenJnlLine.Validate(Comment, 'Auto Generated for Corrective Maintenance');
                GenJnlLine."Source Code" := GEnJournalTemplate."Source Code";
                GenJnlLine."Reason Code" := GenJournalBatch."Reason Code";
                GenJnlLine."Posting No. Series" := GenJournalBatch."Posting No. Series";

                GenJnlLine."Bal. Account Type" := GenJournalBatch."Bal. Account Type"::"G/L Account";
                GenJnlLine.Validate("Bal. Account No.", CMWorkOrderCard."Bal. GL Account");
                GenJnlLine.Modify(true);
            until CMItemBOM.Next = 0;
        Message('Journal Created Sucessfully!!!!');


    End;
}