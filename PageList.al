page 50102 MylistPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Employee_CS;
    Caption = 'Employee List';
    CardPageId = Employee_CardCS;
    PromotedActionCategories = 'New,Modify,Delete,Approval,Reject';
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(EmpId; Rec.EmpId)
                {
                    ApplicationArea = All;
                    
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                field(DeptId;Rec.DeptId)
                {
                    ApplicationArea = All;
                    
                }
                field(email; rec.email)
                {
                    ApplicationArea = All;
                    
                }
                field(Salary; rec.Salary)
                {
                    ApplicationArea = All;
                    
                }
                field("Annual Salary"; rec."Annual Salary")
                {
                    ApplicationArea = All;
                    
                }

            }
        }
        area(FactBoxes)
        {
            
        

        }
        

    }
    
    actions
    {
        area(Processing)
        {
            action(Process)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Report;
                trigger OnAction()
                begin
                    
                end;
            }
        }
        area(Creation)
        {
            action("Purchase Order")
            {
                ApplicationArea = All;
                PromotedCategory = New;
                //Image = "8ball";
                Promoted =true;
                PromotedOnly = true;
                
                trigger OnAction()
                begin
                    
                end;
            }
            action("Sales Order")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = New;
                
                trigger OnAction()
                begin
                    
                end;
            }
            action("Sales Quote")
            {
                ApplicationArea = All;
                Promoted= true;
                PromotedCategory = Category4;
                Image =Archive;
                PromotedIsBig = false;

                trigger OnAction()
                begin
                    
                end;
            }
            action("Purchase Quote")
            {
                ApplicationArea = All;
                Promoted= true;
                PromotedCategory = Category4;
                
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
        area(Navigation)
        {
            action(Path)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
        area(Reporting)
        {
            action(Generate)
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