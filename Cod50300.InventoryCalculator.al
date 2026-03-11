codeunit 50300 "Inventory Calculator"
{
    procedure CalculateStatistics(var Result: Record "Temp Inventory Statistic")
    var
        OfficeSupplies: Record "Office Supplies";
        TotalValue: Decimal;
        ItemCount: Integer;
        CriticalCount: Integer;
        LargestDeficit: Decimal;
        CurrentDeficit: Decimal;
    begin
        TotalValue := 0;
        ItemCount := 0;
        CriticalCount := 0;
        LargestDeficit := 0;

        OfficeSupplies.Reset();
        if OfficeSupplies.FindSet() then
            repeat
                TotalValue += OfficeSupplies."Current Quantity" * OfficeSupplies."Unit Price";
                ItemCount += 1;

                if OfficeSupplies."Current Quantity" < OfficeSupplies."Minimum Quantity" then begin
                    CriticalCount += 1;

                    CurrentDeficit := OfficeSupplies."Minimum Quantity" - OfficeSupplies."Current Quantity";

                    if CurrentDeficit > LargestDeficit then
                        LargestDeficit := CurrentDeficit;
                end;
            until OfficeSupplies.Next() = 0;

        Result.Init();
        Result."Entry No." := 1;
        Result."Total Value" := TotalValue;
        Result."Item Count" := ItemCount;
        Result."Critical Count" := CriticalCount;
        Result."Largest Deficit" := LargestDeficit;
        Result.Insert();
    end;

}
