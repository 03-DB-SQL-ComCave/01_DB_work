\! cls
/* ------  Strukturen ----- */

/* 	 
	Tabelle mit id als PRIMARY KEY --> 
    KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/


/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test; -- db.table

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS boo.test (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES("Max",35);
INSERT INTO boo.test(age,name) VALUES(29,"Maxine");
INSERT INTO boo.test VALUES();

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

-- Doppelte Datensätze werden zugelassen - UNIQUE durch id!
INSERT INTO boo.test(id,name,age) VALUES(DEFAULT,"Max",35);
INSERT INTO boo.test(id,name,age) VALUES(DEFAULT,"Max",35);


/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;


