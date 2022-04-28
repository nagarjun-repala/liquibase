--liquibase formatted sql

--changeset me:1-1
CREATE TABLE Orders (
    ItemId int,
    ItemName varchar(255),
    Price varchar(255)
);
--rollback DROP TABLE Orders;
