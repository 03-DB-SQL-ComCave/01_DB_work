\! cls

-- SELECT * FROM boo.customers;

/* UPDATE TabellenStruktur */

# 1. Neue Spalten anlegen
-- ALTER TABLE boo.customers 
--   ADD vorname VARCHAR(100) AFTER ID,
--   ADD nachname VARCHAR(100) AFTER vorname
-- ;

-- DESCRIBE boo.customers;
-- SELECT * FROM boo.customers LIMIT 5;

# 2. Daten von 'Name' in die neuen Spalten splitten (Beispiel für MySQL)
-- UPDATE boo.customers 
-- SET vorname = SUBSTRING_INDEX(name, ' ', 1),
--     nachname = SUBSTRING_INDEX(name, ' ', -1);

-- SELECT * FROM boo.customers LIMIT 5;

# 3. Alte Spalte löschen
-- ALTER TABLE boo.customers DROP COLUMN name;
-- DESCRIBE boo.customers;
-- SELECT * FROM boo.customers LIMIT 5;

/* UPDATE Daten */

# id 4 + 5 Heirat! ;-)
-- UPDATE boo.customers SET nachname = "Fischer" WHERE id = 4;
-- SELECT * FROM boo.customers LIMIT 5;

#id 1 zieht um
-- UPDATE boo.customers SET adresse = "Mustergasse 2" WHERE id = 1;
-- SELECT * FROM boo.customers LIMIT 5;


