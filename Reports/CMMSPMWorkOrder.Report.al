report 50130 "CM PM Work Order"    //TECSA Change Request on 18-Feb-2024
{
    Caption = 'Preventive Maintenance Work Order Print';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    //  DefaultRenderingLayout = CMWorkOrderPrint;

    RDLCLayout = './ReportLayout/PMWorkOrderPrint.rdl';

    dataset
    {
        dataitem("CMMS PM Schedule"; "CMMS PM Schedule")   // "CMMS PM Schedule"
        {
            RequestFilterFields = "Work Order No.";

            column(Work_Order_No_; "Work Order No.") { }
            column(PMNo_CMMSPMSchedule; "PM No.") { }
            column(PMDescription_CMMSPMSchedule; "PM Description") { }
            column(PMEquipmentNo_CMMSPMSchedule; "PM Equipment No.") { }
            column(PMEquipDescription_CMMSPMSchedule; "PM Equip.Description") { }
            column(PM_Routes_No_; "PM Routes No.") { }

            column(PM_Routes_Name; "PM Routes Name") { }
            column(PMStatus_CMMSPMSchedule; "PM Status") { }

            column(PM_First_Start_Date; "PM First Start Date") { }
            column(PM_Work_Order_Status; "PM Work Order Status") { }
            column(PMWorkOrderType_CMMSPMSchedule; "PM Work Order Type") { }
            column(PM_Work_Order_Priority; "PM Work Order Priority") { }
            column(PM_Supervisor; "PM Supervisor") { }
            column(Work_Order_Completion_Date; "Work Order Completion Date") { }
            column(FDWMQY; FDWMQY) { }
            column(Next_PM_Due_Date; "Next PM Due Date") { }
            column(PM_Sch_No_; "PM Sch No.") { }
            column(Work_Order_Type; "Work Order Type") { }

            column(PlantCode_CMMSPMSchedule; "Plant Code") { }

            column(CauseCode_CMMSPMSchedule; "Cause Code") { }

            column(Remarks1_CMMSPMSchedule; "Remarks 1") { }

            column(Remarks2_CMMSPMSchedule; "Remarks 2") { }

            column(SectionCode_CMMSPMSchedule; "Section Code") { }

            column(SolutionCode_CMMSPMSchedule; "Solution Code") { }

            column(SolutionDescription_CMMSPMSchedule; "Solution Description") { }

            column(UserID_CMMSPMSchedule; "User ID") { }

            column(StoreApprovalStatus_CMMSPMSchedule; "Store Approval Status") { }

            column(HODApprovalStatus_CMMSPMSchedule; "HOD Approval Status") { }

            column(CostCenterCode_CMMSPMSchedule; "Cost Center Code") { }

            dataitem("CMMS Equipment BOM"; "CMMS Equipment BOM")
            {
                DataItemLink = "Equipment No." = field("PM Equipment No.");
                column(Equipment_No_; "Equipment No.") { }
                column(Item_No_; "Item No.") { }
                column(Description; Description) { }
                column(Base_UOM; "Base UOM") { }
                column(Quantity_Per; "Quantity Per") { }
                column(Remarks; Remarks) { }
            }
            dataitem("CMMS Routes Line"; "CMMS Routes Line")
            {
                DataItemLink = "Routes Code" = field("PM Routes No.");

                column(Routes_Code; "Routes Code") { }
                //  column(Equipment_No_;"Equipment No.") { }
                column(Routes_Name; "Routes Name") { }
                column(JP_No_; "JP No.") { }
                column(JP_Description; "JP Description") { }
                column(JP_Task_No_; "JP Task No.") { }
                column(JP_Task_Name; "JP Task Name") { }
                column(JP_Seq_No_; "JP Seq.No.") { }
                column(JP_Task_Time; "JP Task Time") { }
                column(Routes_Remarks; "Routes Remarks") { }
                column(Route_Status; "Route Status") { }
                column(Resource_Code; "Resource Code") { }
                column(Resource_Name; "Resource Name") { }
                column(Unit_Price; "Unit Price") { }
                column(PM_No_; "PM No.") { }
                column(PM_First_Date; "PM First Date") { }
            }

        }
    }
}