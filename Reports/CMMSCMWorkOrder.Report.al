report 50129 "CM Work Order"    //TECSA Change Request on 27-Dec-2023
{
    Caption = 'Corrective Maintenance Work Order Print';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    //  DefaultRenderingLayout = CMWorkOrderPrint;

    RDLCLayout = './ReportLayout/CMWorkOrderPrint.rdl';

    dataset
    {
        dataitem("CMMS PM Schedule"; "CMMS PM Schedule")   // "CMMS PM Schedule"
        {
            RequestFilterFields = "PM No.", "Work Order No.";

            column(PMNo_CMMSPMSchedule; "PM No.") { }

            column(PMDescription_CMMSPMSchedule; "PM Description") { }

            column(PMWorkOrderType_CMMSPMSchedule; "PM Work Order Type") { }

            column(PMWorkOrderStatus_CMMSPMSchedule; "PM Work Order Status") { }

            column(PMEquipmentNo_CMMSPMSchedule; "PM Equipment No.") { }

            column(PMEquipDescription_CMMSPMSchedule; "PM Equip.Description") { }

            column(PMStatus_CMMSPMSchedule; "PM Status") { }

            column(RLJPNo_CMMSPMSchedule; "RL JP No.") { }

            column(RLJPName_CMMSPMSchedule; "RL JP Name") { }

            column(RLEquipNo_CMMSPMSchedule; "RL Equip. No") { }

            column(PlantCode_CMMSPMSchedule; "Plant Code") { }

            column(CauseCode_CMMSPMSchedule; "Cause Code") { }

            column(CauseDescription_CMMSPMSchedule; "Cause Description") { }

            column(FailureCode_CMMSPMSchedule; "Failure Code") { }

            column(FailureDescription_CMMSPMSchedule; "Failure Description") { }

            column(RLTaskNo_CMMSPMSchedule; "RL Task No") { }

            column(RLTaskName_CMMSPMSchedule; "RL Task Name") { }

            column(Remarks1_CMMSPMSchedule; "Remarks 1") { }

            column(Remarks2_CMMSPMSchedule; "Remarks 2") { }

            column(SectionCode_CMMSPMSchedule; "Section Code") { }

            column(SolutionCode_CMMSPMSchedule; "Solution Code") { }

            column(SolutionDescription_CMMSPMSchedule; "Solution Description") { }

            column(WorkOrderNo_CMMSPMSchedule; "Work Order No.") { }

            column(WorkOrderDate_CMMSPMSchedule; "Work Order Date") { }

            column(WorkOrderStartDate_CMMSPMSchedule; "Work Order Start Date") { }

            column(WorkOrderType_CMMSPMSchedule; "Work Order Type") { }

            column(WorkOrderEndDate_CMMSPMSchedule; "Work Order End Date") { }

            column(WorkOrderCompletionDate_CMMSPMSchedule; "Work Order Completion Date") { }

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

        }
    }
}