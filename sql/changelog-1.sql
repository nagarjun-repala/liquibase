--liquibase formatted sql

--changeset me:1-1
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
--rollback DROP TABLE Persons;

--changeset me:1-2
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (1, 'user1', 'user1', 'user1', 'user1');
--rollback DELETE FROM public.persons WHERE personid=1 AND lastname='user1' AND firstname='user1' AND address='user1' AND city='user1';


--changeset me:1-3
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (2, 'user2', 'user2', 'user2', 'user2');
--rollback DELETE FROM public.persons WHERE personid=2 AND lastname='user2' AND firstname='user2' AND address='user2' AND city='user2';

--changeset me:1-4
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (3, 'user3', 'user3', 'user3', 'user3');
--rollback DELETE FROM public.persons WHERE personid=3 AND lastname='user3' AND firstname='user3' AND address='user3' AND city='user3';

--changeset me:2-1
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (4, 'user4', 'user4', 'user4', 'user4');
--rollback DELETE FROM public.persons WHERE personid=4 AND lastname='user4' AND firstname='user4' AND address='user4' AND city='user4';

--changeset me:1-5
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (5, 'user5', 'user5', 'user5', 'user5');
--rollback DELETE FROM public.persons WHERE personid=5 AND lastname='user5' AND firstname='user5' AND address='user5' AND city='user5';