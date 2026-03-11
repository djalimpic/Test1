table 50302 "Temp Inventory Statistic"
{
    Caption = 'Temp Inventory Statistic';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Total Value"; Decimal)
        {
            Caption = 'Total Value';
        }
        field(3; "Item Count"; Integer)
        {
            Caption = 'Item Count';
        }
        field(4; "Critical Count"; Integer)
        {
            Caption = 'Critical Count';
        }
        field(5; "Largest Deficit"; Decimal)
        {
            Caption = 'Largest Deficit';
        }

    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
