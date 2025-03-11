\! cls

# CRUD - Create | Read | Update | Delete

DROP TABLE IF EXISTS boo.users;

/* C - CREATE */

# Tabelle ...
CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

# Inserts ...
INSERT INTO boo.users (userName, familyName, firstName, userPwd) VALUES 
('johndoe123', 'Doe', 'John', SHA1('1234')),
('emilybrown22', 'Brown', 'Emily', SHA1('7xU#')),
('michaelsmith7', 'Smith', 'Michael', SHA1('user1234'));


/* R - READ */
SELECT * FROM boo.users;

/* U - UPDATE -->  */
# Änderung(en) in BESTEHENDER Tab.

UPDATE boo.users SET familyName = "Brown" WHERE id = 1;
SELECT * FROM boo.users;

UPDATE boo.users SET userPwd = SHA1('user5678') WHERE id = 3;
SELECT * FROM boo.users;

/* D - DELETE */
DELETE FROM boo.users WHERE id = 3; -- Filter
SELECT * FROM boo.users;

DELETE FROM boo.users; -- ACHTUNG Daten sind weg!!
SELECT * FROM boo.users;

