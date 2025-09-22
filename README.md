# Day1-Task

# Library Management Database – SQL Developer Internship Task

This project is part of the SQL Developer Internship.  
It demonstrates database setup, schema design, and ER diagram creation.

## Objective
Create a library database with tables, relationships, and keys.

## Tools Used
- MySQL Workbench (for schema & ER diagram)

## Entities
1. **Members** – stores library members.
2. **Books** – stores book details.
3. **Loans** – tracks which member borrowed which book.

## Relationships
- A Member can borrow many Books (via Loans).
- A Book can be borrowed by many Members (via Loans).

## ER Diagram
(Attach the ER diagram image here – exported from MySQL Workbench.)

## SQL Schema
See `Task1.sql` for the CREATE TABLE statements.

## Key Concepts Practiced
- DDL (CREATE TABLE, constraints)
- Normalization
- ER Diagrams
- Primary & Foreign Keys
- AUTO_INCREMENT usage
