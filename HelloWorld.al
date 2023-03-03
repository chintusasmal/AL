// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50113 ItemCardExtension extends "Item Card"
{



    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Attachments)
        {
            action(ImportItemPicture)
            {
                ApplicationArea = All;
                Promoted  = true;
                PromotedOnly = true;
                Caption = 'Import Item Picture';

                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ImportitemPicture(Rec);
                end;


            }
            action(ExportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Export Item Picture';
                Promoted = true;
                PromotedOnly= true;
                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
        // Add changes to page actions here
    }


}