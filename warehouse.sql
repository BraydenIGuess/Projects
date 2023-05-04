-- Brayden Nino
-- Library SQL Project
-- 4/21/23
-- Platt Technical High School

-- creates warehouse database
CREATE DATABASE Warehouse;
-- creates table in Warehouse
create table coInfo(
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
    coID varchar(150),
    coName varchar(200),
    coAdd varchar(200),
    coMail varchar(100)
    );

create table ordInfo(
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ordID varchar(150),
    cusName varchar(200),
    ordCode varchar(200),
    DofO varchar(100),
    ordQuant varchar(100)
    );

INSERT INTO ordInfo
        (ordID, cusName, ordCode, DofO, ordQuant)
values  ("Co1","Matt Doe","OC1","12/1/23", "1"),
        ("Co2","John Doe","OC6","2/5/23", "4"),
        ("Co4","Jane Doe","OC3","12/3/23", "2"),
        ("Co6","William Doe","OC2", "12/21/23", "5"),
        ("Co6","Sean Doe","OC4", "12/12/23", "2"),
        ("Co9","Jose Doe","OC6", "12/11/23", "1"),
        ("Co1","Domino Doe","OC1", "16/21/23", "1"),
        ("Co10","Sean Doe","OC2", "13/14/23", "2"),
        ("Co2","John Doe","OC1", "12/17/23", "1"),
        ("Co6","Manny Doe","OC4", "12/1/23", "1"),
        ("Co5","Justin Doe","OC3", "12/10/23", "12"),
        ("Co1","Christopher Doe","OC2", "12/11/23", "8"),
        ("Co7","Randy Doe","OC6", "12/15/23", "7"),
        ("Co10","Anna Nino","OC5", "12/17/23", "3"),
        ("Co4","Brayden Villa","OC4", "12/19/23", "3"),
        ("Co7","Tom Doe","OC5", "12/17/23", "1"),
        ("Co8","Orville Doe","OC3", "12/18/23", "2"),
        ("Co1","Pangor Doe","OC2", "12/11/23", "2"),
        ("Co10","William Doe","OC5", "12/12/23", "1"),
        ("Co5","Adam Doe","OC1", "12/17/23", "1"),
        ("Co2","Eve Doe","OC1", "12/13/23", "3"),
        ("Co5","Richard Doe","OC2", "12/14/23", "2"),
        ("Co10","Ronald Doe","OC3", "12/15/23", "5"),
        ("Co4","Nathan Doe","OC3", "12/16/23", "1"),
        ("Co1","Regent Doe","OC4", "12/18/23", "1"),
        ("Co7","Pigman Doe","OC3", "12/17/23", "2"),
        ("Co3","Willio Doe","OC2", "12/11/23", "1"),
        ("Co4","Shawn Doe","OC2", "12/12/23", "1"),
        ("Co3","Joseph Doe","OC1", "12/15/23", "1"),
        ("Co2","Dominic Doe","OC1", "12/17/23", "2"),
        ("Co1","Justin Doe","OC4", "12/16/23", "3"),
        ("Co5","Christian Doe","OC3", "12/18/23", "2"),
        ("Co2","Kyle Doe","OC2", "12/19/23", "2"),
        ("Co4","Mikel Doe","OC2", "12/11/23", "1"),
        ("Co10","Reagan Doe","OC1", "12/21/23", "1"),
        ("Co8","Joe Doe","OC4", "12/13/23", "2"),
        ("Co3","Josh Doe","OC6", "12/1/23", "1"),
        ("Co1","Doe Doe","OC6", "12/15/23", "1"),
        ("Co8","Amy Doe","OC5", "12/1/23", "1"),
        ("Co3","Elyse Doe","OC4", "12/1/23", "4"),
        ("Co8","Guadalupe Doe","OC5", "12/1/23", "2"),
        ("Co8","Willow Doe","OC3", "12/1/23", "3"),
        ("Co3","Willis Doe","OC3", "12/1/23", "1"),
        ("Co2","Reginald Doe","OC6", "12/1/23", "1"),
        ("Co4","Martin Doe","OC5", "12/1/23", "1"),
        ("Co1","Simon Doe","OC4", "12/1/23", "4"),
        ("Co3","Raj Doe","OC2", "12/1/23", "5"),
        ("Co4","Howard Doe","OC6", "12/1/23", "1"),
        ("Co5","Sheldon Doe","OC3", "12/1/23", "1"),
        ("Co8","Kaitlyn Doe","OC6", "12/1/23", "1"),
        ("Co2","Dailany Doe","OC3", "11/1/23", "1"),
        ("Co8","Kenneth Doe","OC5", "10/1/23", "3"),
        ("Co5","Tulsa Doe","OC4", "9/1/23", "2"),
        ("Co4","Jayden Doe","OC1", "8/1/23", "1"),
        ("Co6","Aiden Doe","OC1", "4/1/23", "2"),
        ("Co9","Aaron Doe","OC2", "7/1/23", "2"),
        ("Co1","Ethan Doe","OC1", "3/1/23", "1"),
        ("Co7","Virgel Doe","OC4", "4/1/23", "2"),
        ("Co2","Hector Doe","OC1", "7/1/23", "1"),
        ("Co5","Nygel Doe","OC3", "2/1/23", "1"),
        ("Co1","Michael","OC2", "11/1/23", "1");


INSERT INTO coInfo
        (coID, coName, coAdd, coMail)
values  ("Co1","Gualmar","600 main street","Gualmar@company.com"),
        ("Co2","HonDepo","24 row ave","HonDepo@gov.org"),
        ("Co3","cheescayk","60 tween street","IloveBananaPie@Cheescayk.org"),
        ("Co4","otrocompania","09 apple street","anotherone@bitesthe.dust"),
        ("Co5","mattressKing","150 success ave","MattressKing@comfy.com"),
        ("Co6","burgerken","200 main street","yummyfries@aol.com"),
        ("Co7","1guy","31 miller street","1guy@5guys.com"),
        ("Co8","baskonrabbits","308 negra arroyo lane","baskinshade@company.com"),
        ("Co9","towland","42 quinnipac street","wetow@CT.gov"),
        ("Co10","junkremoval","10 main street","junkgone@gmail.com");



        SELECT coInfo.coName, ordInfo.ordCode
        FROM ordInfo
        LEFT JOIN coInfo
        ON coID=coInfo.coID;


        SELECT * from ordInfo
        order by ordCode;
