-- Brayden Nino
-- Library SQL Project
-- 4/20/23
-- Platt Technical High School

-- creates Library databse
CREATE DATABASE Library;
-- creates table in Library
create table books(
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
    btitle varchar(150),
    bauthor varchar(20),
    namec varchar(20),
    cdate varchar(10),
    ddate varchar(10)
    );
-- inserts information into books

insert into books
    (btitle, bauthor, namec, cdate, ddate)
values ("Simple and Efficient Programming with C#, 2nd Edition", "Vaskaran Sarcar", "John Doe", "2/11/2022", "3/11/2023"),
       ("ASP.NET Core APIs Succinctly", "Dirk Strauss", "Jane Doe", "7/27/2011", "7/27/2012"),
       ("Productionizing AI", "Barry Walsh", "Justin Doe", "2/02/2015", "2/02/2016"),
       ("Cisco ACI: Zero to Hero", "Jan Janovic", "William Doe", "5/17/2012", "5/17/2013"),
       ("Advanced Data Analytics Using Python, 2nd Edition", "Sayan Mukhopadhyay, Pratip Samanta", "Domino Doe", "1/21/2010", "1/21/2011"),
       ("HackSpace Magazine: Issue 63", "HackSpace Team", "Josh Doe", "09/18/2006", "09/18/2023"),
       ("Python for Data Analysis, 3rd Edition", "Wes McKinney", "Christopher Doe", "06/09/2020", "06/09/2021"),
       ("A Practical Guide to Cloud Migration", "Kieran Broadfoot", "Eren Doe", "4/20/2011", "4/20/2012"),
       ("Troubleshooting and Supporting Windows 11", "Mike Halsey", "Clyde Doe", "11/21/2018", "11/21/2019"),
       ("Software Development with Go", "Nanik Tolaram", "Shawn Doe", "7/16/1998", "7/16/1999");

-- selects all books
SELECT btitle,bauthor,namec,cdate,ddate,NOW() as moreBooks from books;
-- selects books that start with a b
SELECT btitle,bauthor,namec,cdate,ddate,NOW() as titlesWithB from books where btitle like "b%";
-- selects books in alphabetical order
SELECT btitle,bauthor,namec,cdate,ddate,NOW() as titlesAscending from books
order by btitle ASC;
-- selects all authors from ascending order
SELECT btitle,bauthor,namec,cdate,ddate,NOW() as authorsAscending from books
order by bauthor ASC;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
