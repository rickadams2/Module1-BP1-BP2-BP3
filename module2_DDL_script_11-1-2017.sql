
/*
Project: DATABASE bikerv2
Module2

 */

-- create db
CREATE DATABASE bikerv2
GO

-- create tbl rol (
CREATE table   rol_id  (
  rol_id  INT IDENTITY (1,1) PRIMARY KEY,
rol_naam      VARCHAR (40) NOT NULL,
voornaam       VARCHAR (40) NOT NULL,
);
GO

-- create tbl medewerker (
CREATE table   medewerker  (
medewerker_id  INT IDENTITY (1,1) PRIMARY KEY,
loginnaam      VARCHAR (40) NOT NULL,
password       VARCHAR (255)NOT NULL,  -- VARCHAR 255 i.v.m hash van password
voornaam       VARCHAR (40) NOT NULL,
achternaam     VARCHAR (40) NOT NULL,
geboortedatum  DATE         NOT NULL,
);
GO

-- create tbl klant
--- optie < 'index' toevoegen aan het emailadres
CREATE table klant (
klant_id       INT IDENTITY (1,1) PRIMARY KEY,
voornaam      VARCHAR (50) NOT NULL,
adres         VARCHAR (50) NOT NULL,
postcode      VARCHAR (50) NOT NULL,
plaats        VARCHAR (50) NOT NULL,
mobielnr      VARCHAR (10) NOT NULL,
geboortedatum VARCHAR (50) NOT NULL,
geslacht      VARCHAR (50) NOT NULL,
emailadres    VARCHAR (50) NOT NULL,
username      VARCHAR (50),           -- kan NULL zijn i.v.m. tel. boeking
password      VARCHAR (255),          -- kan NULL zijn i.v.m. tel. boeking
);
GO

-- create tbl verhuur
CREATE table verhuur (
verhuur_id    INT IDENTITY (1,1) PRIMARY KEY,
startdatum    DATE         NOT NULL,
einddatum     DATE         NOT NULL,
betaaldateum  DATE         NOT NULL,
bedrag        DECIMAL (10) NOT NULL,
verhuur_status INT ,  -- 1: verhuurd, 2: defect, 3, geanuleerd, 4: reapratie, 5: no-return
boekings_status INT , -- 1: actief, 2: geanuleerd
klant_id      INT  NOT NULL,
);
GO

-- create tbl verzekering
CREATE table verzekering  (
verzekering_id INT IDENTITY (1,1) PRIMARY KEY,
polisnr        VARCHAR (20),
startdatum     DATE         NOT NULL,
einddatum      DATE         NOT NULL,
verhuur_id     INT			NOT NULL,
);
GO

-- create tbl verhuurfiets (
CREATE table  verhuurfiets  (
verhuur_id    INT IDENTITY (1,1) PRIMARY KEY,
fiets_id      INT  NOT NULL,
);
GO

-- create tbl fiets
CREATE table  fiets  (
fiets_id    INT IDENTITY (1,1) PRIMARY KEY,
merk        VARCHAR (10)       NOT NULL,
type_id     VARCHAR (10)       NOT NULL,
dagprijs    DECIMAL (10)       NOT NULL,
borgbedrag  DECIMAL (10)       NOT NULL,
nieuwwaarde DECIMAL (10)       NOT NULL,
);
GO

-- create tbl typefiets (
CREATE table  fietstype  (
fietstype_ID        INT IDENTITY (1,1) PRIMARY KEY,
fiets_id            INT,
fietstype           INT,
);
GO

-- create tbl merkenlijst (
CREATE table merkenlijst  (
fietstype_ID         INT IDENTITY (1,1) PRIMARY KEY,
fiets_id            INT,
fietstype           INT,
);
GO

-- create tbl verhuuraccessoire (
CREATE table  verhuuraccessoire  (
verhuur_id    INT IDENTITY (1,1) PRIMARY KEY,
accessoire_id  INT IDENTITY (1,1) PRIMARY KEY,
);
GO

-- create tbl accessoire (
CREATE table  accessoire  (
accessoire_type_id  INT IDENTITY (1,1) PRIMARY KEY,
helmen              INT ,
kinderzitjes        INT,
);
GO

-- create tbl accessoirtype
CREATE table  accessoiretype (
accessoire_type_id  INT IDENTITY (1,1) PRIMARY KEY,
accessoiretype INT
);
GO
