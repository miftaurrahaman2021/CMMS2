page 50154 "Ecom Sales Order Header API" //MR Can be Deleted
{
    //  PageType = API;
    PageType = List;
    /*  ChangeTrackingAllowed = true;
     APIPublisher = 'Rahaman';
     APIGroup = 'Rahaman';
     APIVersion = 'v1.0';
     EntityName = 'Sales Order Header';
     EntitySetName = 'Sales Order Header';
     ODataKeyFields = "SystemId"; */
    SourceTable = "Ecom BC API";
    //   DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(no; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'Transaction ID';
                }
                field(transactionDT; Rec."Transaction DT")
                {
                    ApplicationArea = All;
                    Caption = 'Transaction Date & Time';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer ID field.';
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Invoice No. field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}