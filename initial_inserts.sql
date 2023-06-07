-- drop all rows of all tables
DELETE FROM UserProfile;
DELETE FROM Rates;
DELETE FROM Farm;
DELETE FROM Coffee;
DELETE FROM Roastery;
DELETE FROM Vendor;
DELETE FROM Sells;


INSERT INTO public.UserProfile(UserID,UserSince) VALUES (1,'2010-05-20');
INSERT INTO public.UserProfile(UserID,UserSince) VALUES (2,'2012-07-11');
INSERT INTO public.UserProfile(UserID,UserSince) VALUES (3,'2015-04-28');
INSERT INTO public.UserProfile(UserID,UserSince) VALUES (4,'2014-02-01');

INSERT INTO public.Farm(FarmID,Altitude,Locationn) VALUES (1,1210,'this is a farm location');
INSERT INTO public.Farm(FarmID,Altitude,Locationn) VALUES (2,20,'Copenhagen, Denmark');

INSERT INTO public.Roastery(RoasteryID, RoasteryName,Locationn) VALUES (1,'Vesterbro good Roastery','Vesterbro, Denmark');
INSERT INTO public.Roastery(RoasteryID, RoasteryName,Locationn) VALUES (2,'The good swedish roastery','Malmo, Sweden');


INSERT INTO public.Coffee(CoffeeID,FairTrade,Varietal,FarmID,Processing,RoasteryID,RoastLevel) VALUES (1,true, 'Andreas varietal',1,'good processing',1,'dark roast');
INSERT INTO public.Coffee(CoffeeID,FairTrade,Varietal,FarmID,Processing,RoasteryID,RoastLevel) VALUES (2,false, 'Asbjorns varietal',2,'bad processing',2,'light roast');

INSERT INTO public.Rates(UserID, CoffeeID, Rating, FlavourProfile, Sweetness, Body, Acidity, Bitterness, DateOfRating) VALUES (1, 1, 4, 'Really good flavour', 4, 2, 1, 5, '2010-05-22');
INSERT INTO public.Rates(UserID, CoffeeID, Rating, FlavourProfile, Sweetness, Body, Acidity, Bitterness, DateOfRating) VALUES (2, 2, 3, 'Really bad flavour', 2, 3, 3, 3, '2015-05-22');
INSERT INTO public.Rates(UserID, CoffeeID, Rating, FlavourProfile, Sweetness, Body, Acidity, Bitterness, DateOfRating) VALUES (3, 2, 3, 'Really medium flavour', 3, 3, 2, 4, '2018-05-22');

INSERT INTO public.Vendor(VendorID,Locationn) VALUES (1,'Esbjerg');
INSERT INTO public.Vendor(VendorID,Locationn) VALUES (2,'Jyllinge');


INSERT INTO public.Sells(Price,VendorID,CoffeeID) VALUES (400,1,1);
INSERT INTO public.Sells(Price,VendorID,CoffeeID) VALUES (800,1,2);




