table 50101 Employee_CS
{
    DataClassification = ToBeClassified;
    CaptionML = ENU = 'Employee', ESP = 'Empleado';
    //DataCaptionFields = Name, email;// this will be seen on top of page
    DataPerCompany = true;
    //LookupPageId = 21;
    //DrillDownPageId= "Customer List";
    TableType = Normal;



    fields
    {
        field(1; EmpId; Code[10])
        {
            DataClassification = ToBeClassified;
            // Enabled = false;


        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;
            // Enabled= true;

        }

        field(3; Salary; Integer)
        {
            DataClassification = ToBeClassified;
                      
        

        }
        field(4; DOB; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(5; email; Text[20])
        {
            DataClassification = ToBeClassified;
            // ExtendedDatatype = EMail;

        }
        field(6; DOJ; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(7; DeptId; Text[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = MyDept.DeptId;

        }

        field(8; "Annual Salary"; Integer)
        {
            DataClassification = ToBeClassified;
            

        }
    }


    keys
    {
        key(Key1; EmpId)
        {
            Clustered = true;
        }
        key(Key2; DeptId)
        {

        }
        key(Key3; Name)
        {

        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; EmpId, Name, DOJ, DeptId)
        {

        }
        fieldgroup(Brick; EmpId, Name, Salary, email, DOJ, DeptId)
        { }
    }

    var
        myInt: Integer;
        MyRecord : Record Employee_CS;

    trigger OnInsert()
    begin
        //MyRecord.Get(Rec.EmpId);
        //myInt:= MyRecord."Annual Salary" Div 12;
        
    end;

    trigger OnModify()
    begin
        myInt :="Annual Salary" Div 12;
        Salary := myInt;
        Message(Format(Salary));

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}