--liquibase formatted sql

--changeset amalik:1 labels:jira-1218,release-1.0.0
INSERT INTO BusinessUnit (ID, Name, ModifidDate) VALUES (1, 'Explosives', current_date());
INSERT INTO BusinessUnit (ID, Name, ModifidDate) VALUES (2, 'Glue', current_date());
INSERT INTO BusinessUnit (ID, Name, ModifidDate) VALUES (3, 'Anvils', current_date());
INSERT INTO BusinessUnit (ID, Name, ModifidDate) VALUES (4, 'Appliances', current_date());
INSERT INTO BusinessUnit (ID, Name, ModifidDate) VALUES (5, 'Rockets', current_date());
--rollback DELETE FROM BusinessUnit WHERE ID BETWEEN 1 AND 5;

--changeset amalik:2 labels:jira-1357,release-1.0.1
UPDATE BusinessUnit SET ModifidDate = current_date(), CurrencyCode = 'USD';
--rollback empty
