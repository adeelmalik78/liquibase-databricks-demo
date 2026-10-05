--liquibase formatted sql

--changeset jbennett:1 labels:jira-1218,release-1.0.0
CREATE TABLE LOB (ID INT PRIMARY KEY, Name STRING, ModifidDate DATE);
--rollback DROP TABLE LOB;

--changeset jbennett:2 labels:jira-1218,release-1.0.0
INSERT INTO LOB (ID, Name, ModifidDate) VALUES (1, 'Explosives', current_date());
INSERT INTO LOB (ID, Name, ModifidDate) VALUES (2, 'Glue', current_date());
INSERT INTO LOB (ID, Name, ModifidDate) VALUES (3, 'Anvils', current_date());
INSERT INTO LOB (ID, Name, ModifidDate) VALUES (4, 'Appliances', current_date());
INSERT INTO LOB (ID, Name, ModifidDate) VALUES (5, 'Rockets', current_date());
--rollback DELETE FROM LOB WHERE ID BETWEEN 1 AND 5;

--changeset jbennett:3 labels:jira-1342,release-1.0.1
ALTER TABLE LOB ADD COLUMN CurrencyCode STRING;
--rollback empty

--changeset jbennett:4 labels:jira-1357,release-1.0.1
UPDATE LOB SET ModifidDate = current_date(), CurrencyCode = 'USD';
--rollback UPDATE LOB SET CurrencyCode = NULL WHERE ID BETWEEN 1 AND 5;

--changeset jbennett:5 labels:jira-1359,release-1.0.1
DELETE FROM LOB;
--rollback EMPTY