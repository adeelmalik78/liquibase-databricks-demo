--liquibase formatted sql

--changeset jbennett:11 labels:jira-1218,release-1.0.0
CREATE TABLE Persons (ID INT PRIMARY KEY, Name STRING, ModifidDate DATE);
--rollback DROP TABLE Persons;
