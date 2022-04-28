--liquibase formatted sql

--changeset me:1-1
CREATE TABLE Marks (
    Total int
);
--rollback DROP TABLE Marks;