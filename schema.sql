--run file for dropping tables 
\i drop_all.sql

CREATE TABLE IF NOT EXISTS UserProfile(
	UserID integer PRIMARY KEY,
	UserSince date
);


-- many-to-many between user and coffee, therefore rates-relation gets its own table
CREATE TABLE IF NOT EXISTS Rates(
	Rating integer CHECK (rating > 0 AND rating < 6), -- 1 to 5 stars
    FlavourProfile varchar(100),
	UserID integer REFERENCES UserProfile

);

-- one-to-many relationship between farm and coffee
-- grown-by (from E/R diagram) not implemented as its own table but with processing and farmid as coffee attributes
CREATE TABLE IF NOT EXISTS Farm(
	FarmID integer PRIMARY KEY,
	Altitude integer,
    Locationn varchar(40)
);


CREATE TABLE IF NOT EXISTS Roastery(
	RoasteryName varchar(40) PRIMARY KEY,
    Locationn varchar(40)
);

CREATE TABLE IF NOT EXISTS Vendor(
	VendorID integer PRIMARY KEY,
	Locationn varchar(40)
);


--many-to-amy
CREATE TABLE IF NOT EXISTS Sells(
	Price integer NOT NULL CHECK (price >= 0),
	VendorID integer REFERENCES Vendor
);


CREATE TABLE IF NOT EXISTS Coffee(
	CoffeeID integer PRIMARY KEY,
	FairTrade boolean,
    Varietal varchar(40),
    FarmID integer REFERENCES Farm,
    Processing varchar(30),
    RoasteryName varchar(40) REFERENCES Roastery,
    RoastLevel varchar(20)
);

ALTER TABLE Rates ADD CoffeeID integer REFERENCES Coffee;
ALTER TABLE Rates ADD PRIMARY KEY (UserID, CoffeeID);

ALTER TABLE Sells ADD CoffeeID integer REFERENCES Coffee;
ALTER TABLE Sells ADD PRIMARY KEY (VendorID, CoffeeID);


--commit; -- complete transaction
