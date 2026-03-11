pageextension 50348 "Role Center Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(processing)
        {
            action(Equipment)
            {
                Caption = 'Equipment';
                ApplicationArea = All;
                Image = List;
                RunObject = page "Company Equipment List";
                ToolTip = 'Open the Company Equipment List.';
            }
        }
    }
}
