table 50302 "Temp Inventory Statistics"
{
    Caption = 'Temp Inventory Statistics';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(2; TotalValue; Decimal)
        {
            Caption = 'Total Value';
        }
        field(3; ItemCount; Integer)
        {
            Caption = 'Item Count';
        }
        field(4; CriticalCount; Integer)
        {
            Caption = 'Critical Count';
        }
        field(5; LargestDeficitName; Decimal)
        {
            Caption = 'Largest Deficit';
        }

    }
    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}
