-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-11-23 16:16:05 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE gym
  (
    gym_id         INTEGER NOT NULL ,
    city           VARCHAR2 (50) ,
    gym_leader     VARCHAR2 (50) ,
    specialty_type VARCHAR2 (50) ,
    badge          VARCHAR2 (50)
  ) ;
ALTER TABLE gym ADD CONSTRAINT gym_PK PRIMARY KEY ( gym_id ) ;


CREATE TABLE gym_pokemon
  (
    pokemon_id INTEGER NOT NULL ,
    gym_gym_id INTEGER ,
    pokemon    VARCHAR2 (50) ,
    pkmn_level INTEGER ,
    pkmn_type  VARCHAR2 (50) ,
    ability    VARCHAR2 (50) ,
    item       VARCHAR2 (50)
  ) ;
ALTER TABLE gym_pokemon ADD CONSTRAINT gym_pokemon_PK PRIMARY KEY ( pokemon_id ) ;


ALTER TABLE gym_pokemon ADD CONSTRAINT gym_pokemon_gym_FK FOREIGN KEY ( gym_gym_id ) REFERENCES gym ( gym_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              3
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
