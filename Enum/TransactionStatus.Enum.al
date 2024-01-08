enum 50109 "Transaction Status"
{
    Extensible = true;

    value(0; " ") { Caption = ''; }
    value(1; Pending) { Caption = 'Pending'; }
    value(2; Processed) { Caption = 'Processed'; }
    value(3; Failed) { Caption = 'Failed'; }
    value(4; Successful) { Caption = 'Successful'; }
}