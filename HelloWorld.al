// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50110 CustomerListExt extends 9305
{
    layout
    {
        addafter(Amount)
        {
         field("Amount in USD";Rec."Total Sales")
         {
            Caption= 'Total Sales in USD';

         }

        }

    }

    
}