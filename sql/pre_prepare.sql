CREATE SCHEMA pre_prepare;

SET preprepare.relation = 'pre_prepare.statements';

SET client_min_messages = warning;
CREATE TABLE pre_prepare.statements(name text primary key, statement text);
RESET client_min_messages;
INSERT INTO pre_prepare.statements VALUES ('test', 'prepare test as select 1');

SELECT prepare_all();

EXECUTE test;
