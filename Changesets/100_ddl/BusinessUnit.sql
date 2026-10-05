--liquibase formatted sql

--changeset jbennett:1 labels:jira-1218,release-1.0.0
CREATE TABLE BusinessUnit (ID INT PRIMARY KEY, Name STRING, ModifidDate DATE);
--rollback DROP TABLE BusinessUnit;

--changeset jbennett:3 labels:jira-1342,release-1.0.1
ALTER TABLE BusinessUnit ADD COLUMN CurrencyCode STRING;
--rollback empty
