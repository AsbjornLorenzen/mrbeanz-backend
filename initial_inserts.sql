-- drop all rows of all tables
DELETE FROM UserProfile;
DELETE FROM Rates;
DELETE FROM Farm;
DELETE FROM Coffee;
DELETE FROM Roastery;
DELETE FROM Vendor;
DELETE FROM Sells;

INSERT INTO public.UserProfile(UserID, UserSince) VALUES (1, '2010-05-20');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (2, '2012-07-11');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (3, '2015-04-28');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (4, '2014-02-01');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (5, '2015-08-22');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (6, '2011-06-12');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (7, '2018-03-05');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (8, '2013-11-17');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (9, '2012-09-29');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (10, '2017-04-14');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (11, '2019-10-08');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (12, '2016-02-26');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (13, '2010-07-18');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (14, '2014-12-10');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (15, '2016-08-02');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (16, '2013-05-25');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (17, '2017-11-16');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (18, '2012-01-06');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (19, '2018-09-28');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (20, '2015-04-19');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (21, '2019-12-13');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (22, '2011-10-05');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (23, '2017-02-27');
INSERT INTO public.UserProfile(UserID, UserSince) VALUES (24, '2014-07-21');

INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (1, 1210,'Oslo, Norway');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (2, 20, 'Roskilde, Denmark');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (3, 1300, 'Antigua, Guatemala');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (4, 950, 'Tarrazu, Costa Rica');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (5, 1200, 'Sidamo, Ethiopia');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (6, 1400, 'Oaxaca, Mexico');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (7, 1600, 'Kona, Hawaii');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (8, 900, 'Yirgacheffe, Ethiopia');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (9, 1100, 'Boquete, Panama');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (10, 1700, 'Blue Mountains, Jamaica');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (11, 1000, 'Matagalpa, Nicaragua');
INSERT INTO public.Farm(FarmID, Altitude, Locationn) VALUES (12, 1500, 'Huehuetenango, Guatemala');

INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (1, 'Roaster Man','Vesterbro, Denmark');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (2, 'Roasty Roaster','Malmo, Sweden');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (3, 'Bean Hoppers', 'Copenhagen, Denmark');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (4, 'Nordic Roast', 'Stockholm, Sweden');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (5, 'Brew House', 'Aarhus, Denmark');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (6, 'Munich Beans', 'Munich, Germany');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (7, 'Gothenburg Grind', 'Gothenburg, Sweden');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (8, 'Nørrebro Roasters', 'Copenhagen, Denmark');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (9, 'Frankfurt Craft Coffee', 'Frankfurt, Germany');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (10, 'Malmo Roast', 'Malmo, Sweden');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (11, 'Hamburg Java', 'Hamburg, Germany');
INSERT INTO public.Roastery(RoasteryID, RoasteryName, Locationn) VALUES (12, 'Arhus Artisan', 'Aarhus, Denmark');

INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (1,true, 'SL28',1,'Natural',1,'Dark');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (2,false, 'Arabica',2,'Natural',2,'Light');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (3, true, 'Arabica', 1, 'Washed', 5, 'Medium');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (4, false, 'Robusta', 3, 'Natural', 8, 'Dark');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (5, true, 'Geisha', 7, 'Honey', 2, 'Light');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (6, false, 'Catuai', 4, 'Washed', 11, 'Medium-Dark');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (7, true, 'Bourbon', 9, 'Natural', 6, 'Medium');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (8, false, 'Typica', 5, 'Honey', 9, 'Dark');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (9, true, 'Caturra', 12, 'Washed', 3, 'Light');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (10, false, 'Ethiopian Heirloom', 8, 'Natural', 7, 'Medium-Dark');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (11, true, 'Maragogipe', 2, 'Washed', 10, 'Medium');
INSERT INTO public.Coffee(CoffeeID, FairTrade, Varietal, FarmID, Processing, RoasteryID, RoastLevel) VALUES (12, false, 'SL28', 6, 'Honey', 4, 'Light');

INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (4,'very interesting flavour profile',1,1);
INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (2,'very boring flavour profile',2,1);
INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (5,'very strong flavour profile',1,2);
INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (5,'i dont really feel like giving a descriptive flavour profile, see my ratings!',5,10);


INSERT INTO public.Vendor(VendorID, Locationn) VALUES (1, 'Esbjerg');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (2, 'Nyhavn, Copenhagen');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (3, 'Vesterbro, Copenhagen');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (4, 'Frederiksberg, Copenhagen');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (5, 'Christianshavn, Copenhagen');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (6, 'Osterbro, Copenhagen');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (7, 'Aarhus C, Aarhus');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (8, 'Trojborg, Aarhus');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (9, 'Norrebro, Copenhagen');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (10, 'Vesterbro, Aarhus');
INSERT INTO public.Vendor(VendorID, Locationn) VALUES (11, 'City Center, Copenhagen');


INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (400, 1, 1);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (800, 1, 2);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (199, 1, 7);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (120, 2, 3);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (249, 3, 4);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (80, 4, 5);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (400, 5, 6);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (150, 6, 7);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (299, 7, 8);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (91, 8, 9);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (200, 9, 10);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (450, 10, 11);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (180, 11, 12);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (230, 2, 1);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (375, 3, 2);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (120, 4, 3);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (410, 5, 4);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (175, 6, 5);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (280, 7, 6);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (145, 8, 7);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (195, 9, 8);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (495, 10, 9);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (199, 11, 10);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (370, 2, 11);
INSERT INTO public.Sells(Price, VendorID, CoffeeID) VALUES (160, 3, 12);





