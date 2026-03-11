pageextension 50348 "Role Center Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(embedding)
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
