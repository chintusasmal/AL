page 50101 "Employee_CardCS"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employee_CS;
    DataCaptionFields = DOB, Name;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(EmpId; Rec.EmpId)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;

                }
            }
            group(Contact)
            {

                field(email; Rec.email)
                {
                    ApplicationArea = All;

                }
                field(email1; Rec.email)
                {
                    ApplicationArea = All;

                }
            }
            group("Company Details")
            {

                field(DOJ; Rec.DOJ)
                {
                    ApplicationArea = All;

                }
                field("Annual Salary"; rec."Annual Salary")
                {
                    ApplicationArea = All;


                }
                field(Salary; rec.Salary)
                {
                    ApplicationArea = All;
                    
                
                }
                


            }
        }
        area(FactBoxes)
        {
            part(MylistPage; MylistPage)
            {
                ApplicationArea = All;
                SubPageLink = EmpId = FIELD(EmpId);
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Process)
            {
                ApplicationArea = All;
                //RunObject = page MylistPage;
                //RunPageLink = EmpId = field(EmpId);

                trigger OnAction()
                begin
                    MyAction.Run();

                end;
            }
        }
        area(Creation)
        {
            action("Purchase Order")
            {
                ApplicationArea = All;
                Image = "8ball";

                trigger OnAction()
                begin

                end;
            }
            action("Sales Order")
            {
                ApplicationArea = All;


                trigger OnAction()
                begin

                end;
            }
            action("Sales Quote")
            {
                ApplicationArea = All;
                Promoted = true;
                Image = Archive;
                PromotedIsBig = false;

                trigger OnAction()
                begin

                end;
            }
            action("Purchase Quote")
            {
                ApplicationArea = All;


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
                    MyRecord.Get(Rec.EmpId);
                    myInt:= MyRecord."Annual Salary" Div 12;
                    MyRecord.Salary := myInt;
                    Message('Salary is %1',Salary);
                end;
            }
        }
    }



    var
        myInt,x: Integer;
        MyRecord: Record Employee_CS;
        
        MyAction : Codeunit MyFirstCode ;


}