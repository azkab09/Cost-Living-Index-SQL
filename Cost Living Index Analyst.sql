ALTER TABLE cost_of_living_index_by_country RENAME TO costlivindex;

select * from costlivindex c 
--Table 
--Rank
--Country
--Cost of Living Index
--Rent Index
--Cost of Living Plus Rent Index
--Groceries Index
--Restaurant Prince Index
--Local Purchasing Power Index

--1. FIND DATA MISSING  
--Rank
select count(*) from costlivindex c
where "Rank" is null;
--Country
select count(*) from costlivindex c
where "Country" is null;
--Cost of Living Index
select count(*) from costlivindex c
where "Cost of Living Index" is null;
--Rent Index
select count(*) from costlivindex c
where "Rent Index" is null;
--Cost of Living Plus Rent Index
select count(*) from costlivindex c
where "Cost of Living Plus Rent Index" is null;
--Groceries Index
select count(*) from costlivindex c
where "Groceries Index" is null;
--Restaurant Prince Index
select count(*) from costlivindex c
where "Restaurant Price Index" is null;
--Local Purchasing Power Index
select count(*) from costlivindex c
where "Local Purchasing Power Index" is null;

--FIND DUPLICATED DATA
select "Rank", "Country", "Cost of Living Index", "Rent Index", "Cost of Living Plus Rent Index", "Groceries Index", "Restaurant Price Index",
"Local Purchasing Power Index", count(*)
from costlivindex c 
group by "Rank", "Country", "Cost of Living Index", "Rent Index", "Cost of Living Plus Rent Index", "Groceries Index", "Restaurant Price Index",
"Local Purchasing Power Index" 
having count(*) > 1;

