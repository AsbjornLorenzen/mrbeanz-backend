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


INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (4,'very interesting flavour profile',1,1);
INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (2,'very boring flavour profile',2,1);
INSERT INTO public.Rates(Rating,FlavourProfile,UserID,CoffeeID) VALUES (5,'very strong flavour profile',1,2);


INSERT INTO public.Farm(FarmID,Altitude,Locationn) VALUES (1,1210,'this is a farm location');
INSERT INTO public.Farm(FarmID,Altitude,Locationn) VALUES (2,20,'Copenhagen, Denamrk');


INSERT INTO public.Coffee(CoffeeID,FairTrade,Varietal,FarmID,Processing,RoasteryName,RoastLevel) VALUES (1,yes, 'Andreas varietal',1,'good processing','Vesterbro good Roastery','dark roast');
INSERT INTO public.Coffee(CoffeeID,FairTrade,Varietal,FarmID,Processing,RoasteryName,RoastLevel) VALUES (2,no, 'Asbjorns varietal',2,'bad processing','The good swedish roastery','light roast');


INSERT INTO public.Roastery(RoasteryName,Locationn) VALUES ('Vesterbro good Roastery','Vesterbro, Denmark');
INSERT INTO public.Roastery(RoasteryName,Locationn) VALUES ('The good swedish roastery','Malmo, Sweden');


INSERT INTO public.Vendor(VendorID,Locationn) VALUES (1,'Esbjerg');


INSERT INTO public.Sells(Price,VendorID,CoffeeID) VALUES (400,1,1);
INSERT INTO public.Sells(Price,VendorID,CoffeeID) VALUES (800,1,2);




