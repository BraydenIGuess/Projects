-- Brayden Nino
-- Cars SQL Project
-- 2/9/23
-- Platt Technical High School



-- creates database named cars
create database Cars;

use Cars;
-- creating table inside database where all varchars and fields will be made
create table CarsData(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Years varchar(4),
    Make varchar(20),
    Model varchar(20),
    Cycle varchar(1),
    Engine varchar(5),
    MPG varchar(2),
    Price varchar(10),
    Doors varchar(1)

);
-- creates an index for Cars Make
create index idx_Make on CarsData(Make);
-- Creates an index for Cars Model
create index idx_Model on CarsData(Model);

DESC CarsData;
-- inserts all cars into table
insert into CarsData
    (Years, Make, Model, Cycle, Engine, MPG, Price, Doors)
values  ("2012", "Nissan", "Versa", "4", "1.6", "31", "10990", "4"),
        ("2013", "Nissan", "Versa", "4", "1.6", "31", "11990", "4"),
        ("2013", "Chevrolet", "Spark", "4", "1.2", "35", "12185", "2"),
        ("2013", "Smart", "Fortwo", "3", "1", "36", "12490", "2"),
        ("2012", "Hyundai", "Accent", "4", "1.6", "32", "12545", "4"),
        ("2013", "Ford", "Fiesta", "4", "1.6", "33", "13400", "4"),
        ("2012", "Kia", "Rio", "4", "1.6", "33", "13600", "4"),
        ("2012", "Kia", "Rio5", "4", "1.6", "33", "13,600", "4"),
        ("2012", "Fiat", "500", "4", "1.4", "34", "15500", "2"),
        ("2012", "VW", "Jetta", "4", "2", "29", "15515", "4"),
        ("2013", "VW", "Jetta", "4", "2", "29", "15454", "4"),
        ("2012", "Mitsubishi", "Lancer", "4", "2", "29", "15695", "4"),
        ("2013", "Scion", "xD", "4", "1.8", "30", "15745", "4"),
        ("2013", "Dodge", "Grand Caravan", "6", "3.6", "21", "22030", "4"),
        ("2013", "Nissan", "Frontier", "6", "4", "19", "22030", "4"),
        ("2013", "Ford", "Mustang", "6", "3.7", "24", "22200", "2"),
        ("2012", "Ferrari", "California", "8", "4.3", "16", "195840", "2"),
        ("2013", "Ferrari", "California", "8", "4.3", "16", "198190", "2"),
        ("2013", "Mercedes", "SLS-AMG", "8", "6.2", "16", "199500", "2"),
        ("2012", "Ferrari", "458 Italia", "8", "4.5", "15", "229825", "2"),
        ("2012", "Bentley", "Mulsanne", "8", "6.8", "14", "290000", "4"),
        ("2013", "Nissan", "GT-R", "6", "3.8", "19", "96820", "2"),
        ("2012", "BMW", "ActiveHybrid 750", "6", "3.8", "19", "96820", "2"),
        ("2013", "BMW", "M6", "8", "4.4", "17", "108350", "2"),
        ("2013", "Audi", "S8", "8", "4", "20", "110000", "4"),
        ("2013", "Lexus", "LX 570", "8", "5.7", "14", "81530", "4"),
        ("2013", "BMW", "750", "8", "4.4", "21", "86800", "4"),
        ("2012", "BMW", "ActiveHybrid 5", "6", "3", "26", "60950", "4"),
        ("2012", "VW", "Touareg Hybrid", "6", "3", "22", "61995", "4"),
        ("2012", "Lotus", "Evora", "6", "3.5", "22", "66100", "2"),
        ("2012", "Porsche", "Cayenne Hybrid", "6", "3", "22", "69000", "4");
-- shows all cars that are american made
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors from CarsData WHERE Make in ('VW', 'BMW', 'Audi', 'Mercedes');

select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE MPG >= 20
ORDER BY Price ASC;
-- shows all cars prcied at >10k and <20k sorted by model name in descending order
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE Price > 10000 AND Price < 20000
ORDER BY Model DESC;
-- shows all cars that are price >20k and <30k sorted by price in descending order
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE Price > 20000 AND Price < 30000
ORDER BY Price DESC;
-- shows all cars that are priced higher than 30k and ordered by MPG in ascending order
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE Price > 30000
ORDER BY MPG ASC;
-- Shows all cars that are german made sorted by ascending order that is 6 cylinders 
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE Make IN ('BMW', 'Mercedes', 'Audi', 'VW') AND Cycle = 6
ORDER BY Make ASC;
-- shows all cars that get over 30 MPG  sorted by model in descending order
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE MPG > 30
ORDER BY Model DESC;
-- shows all cars that get less than 20 MPG order by price in descending order 
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE MPG < 20
ORDER BY Price DESC;
-- shows all 8 cylinder cars sorted by make in descending order
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData WHERE Cycle = 8
ORDER BY Make DESC;
-- shows all cars sorted by make in descending order and model in ascending order
select Years, Make, Model, Cycle, Engine, MPG, Price, Doors FROM CarsData 
ORDER BY Make DESC, Model ASC;

