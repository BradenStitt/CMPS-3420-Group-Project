-- Need to temporarily disable foreign keys while creating tables with circular dependencies.
SET foreign_key_checks = 0;

-- Alternately, manually add foreign keys after the table's been created
-- using ALTER TABLE statements. 

source schema.sql;

source data.sql;

-- Turn foreign key constraints back on when finished
SET foreign_key_checks = 1;
