pageextension 50112 CardpageExt extends "Customer Card" 
{
    layout
    {
        addafter(Address)
    {
        field(Customer;Rec.Customer)
        {
            ApplicationArea = all;
            ToolTip  ='ENter your desciption';
        }
    }

    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}