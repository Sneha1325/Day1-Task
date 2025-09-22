
    CREATE DATABASE IF NOT EXISTS Library;
    
    Use Library
    
--   Member Table  
    Create Table Member(
    Member_ID int Auto_increment Primary Key,
    Name Varchar(100) Not null,
    Email Varchar(100)not null unique,
    Mobileno varchar(15)not null,
    Address text    
    );
  
  Select * From member
  
  -- Author Table
  
      Create Table Author(
    Author_ID int Auto_increment Primary Key,
    Author_Name Varchar(100) Not null
    );
    
      Select * From Author
  
  -- Category Table 
  
   Create Table Category(
    Cat_ID int Auto_increment Primary Key,
    Category_Name Varchar(100) Not null
    );
    
    Select * From Category
    
    
    -- Books table
    Create table Books(
    Book_Id int auto_increment primary key,
    Title varchar(100) Not null,
    Author_Id int,Foreign key (Author_ID) references Author(Author_Id),
    Cat_Id int, Foreign key(Cat_Id) References Category(Cat_id),
    Available Boolean Default True,
    Price Int Not null
    );
  
  Select * From Books
  
  
  -- Staff Table
  Create Table Staff(
  Staff_Id int Auto_Increment Primary Key,
  Staff_Name Varchar(100) Not Null,
  Designation Varchar(100) Not Null
  );
  
  Select * From Staff
  
  -- Loan Table
  
  Create Table Loan(
  Loan_Id int Auto_increment Primary Key,
  Member_Id int,Foreign Key(Member_ID) References Member(Member_id),
  Book_Id int,Foreign Key(Book_Id) References Books(Book_id),
  Staff_Id int,Foreign Key(Staff_Id) References Staff(Staff_Id),
  Issue_Date Date,
  Return_Date Date,
  Amount int Not Null
  );
  
  Select * From Loan
  