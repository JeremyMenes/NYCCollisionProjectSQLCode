--Updates VEHICLE_TYPE_CODE_3

--Drop Existing TempTable if one exists
IF OBJECT_ID('tempdb.dbo.##TempTable') IS NOT NULL
DROP TABLE ##TempTable

--Create TempTable from CollisionID and the Vehicle Type Codes that we want to change
SELECT * INTO ##TempTable
FROM (
SELECT [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].COLLISION_ID, [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].VEHICLE_TYPE_CODE_3
FROM [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes]
WHERE [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].VEHICLE_TYPE_CODE_3 =
'Station Wagon/Sport Utility Vehicle' OR 'PASSENGER VEHICLE' OR 'SPORT UTILITY / STATION WAGON' OR 
'Unknown' OR 'Pick-up Truck' OR '4 dr sedan' OR 'OTHER' OR 
'LARGE COM VEH(6 OR MORE TIRES)' OR 'SMALL COM VEH(4 TIRES) ' OR 'LIVERY VEHICLE' OR 'Tractor Truck Diesel' OR 
'BICYCLE' OR '2 dr sedan' OR 'Dump' OR 'PK' OR 'Flat Bed' OR 
'Ambulance' OR 'Moped' OR 'Tow Truck / Wrecker' OR 'E-Bike' OR 'E-Scooter' OR 
'Garbage or Refuse' OR 'Tractor Truck Gasoline' OR 'Carry All' OR 'Motorscooter' OR 'Chassis Cab' OR 
'Motorbike' OR 'TRAILER' OR 'LIMO' OR 'Concrete Mixer' OR 'FIRE TRUCK' OR 
'subn' OR 'Tanker' OR 'Pedicab' OR 'Trail' OR 'Truck' OR 
'AMBUL' OR 'SCOOTER' OR 'Multi-Wheeled Vehicle' OR 'Refrigerated Van' OR 'Lift Boom' OR 
'3-Door' OR 'TOW TRUCK' OR 'School bus' OR 'TRACT' OR 'UNK' OR 
'Flat Rack' OR 'Stake or Rack' OR 'Bulk Agriculture' OR 'Armored Truck' OR 'Beverage Truck' OR 
'RV' OR 'SCHOO' OR 'COM' OR 'E-Bik' OR 'GARBAGE TR' OR 
'FOOD' OR 'Pallet' OR 'Open Body' OR 'Fire' OR 'motor home' OR 
'TOW T' OR 'PASSENGER' OR 'FDNY FIRE' OR 'PICK UP' OR 'MTA bus' OR 
'FORD' OR 'COMMERCIAL' OR 'Cargo' OR 'POWER SHOV' OR 'Utility' OR 
'USPS' OR 'VAN TRUCK' OR 'FDNY FIRET' OR 'SANIT' OR 'UNKNO' OR 
'C1' OR 'OMT' OR 'comme' OR 'firet' OR 'TRACTOR TR' OR 
'MTA B' OR 'Flatbed' OR 'UTILI' OR 'ELECT' OR 'Motorized Home' OR 
'Sprinter V' OR 'PAS' OR 'FDNY' OR 'FLAT' OR 'PICKUP' OR 
'box t' OR 'TRANSPORT' OR 'GOVER' OR 'DUMP TRUCK' OR 'pick up tr' OR 
'UHAUL Trai' OR 'DSNY Garba' OR 'UTILITY TR' OR 'ICE CREAM' OR 'SPC' OR 
'bsd' OR 'ECOLINE VA' OR 'WORK VAN' OR 'Pickup with mounted Camper' OR 'UHAUL BOX' OR 
'Moped scoo' OR 'MOTOR' OR 'MINIVAN' OR 'VERIZ' OR 'Freig' OR 
'ELECTRIC S' OR 'UPS TRUCK' OR 'Vanette' OR 'JEEP' OR 'UNICYCLE' OR 
'fre' OR 'Ridgeline' OR 'tank' OR 'NYC SANITA' OR 'AMB' OR 
'Tow-truck' OR 'TRL' OR 'AMUBL' OR 'n/a' OR 'Horse' OR 
'PICK-UP TR' OR 'USPS MAIL' OR 'Moving van' OR 'FOOD TRUCK' OR 'road' OR 
'BK' OR 'hrse' OR 'Motorhome' OR 'BOOM 60FT' OR 'DIRT BIKE' OR 
'HOUSE ON W' OR 'Budget tru' OR 'Box' OR 'DUAL' OR 'VS2' OR 
'vehicle tr' OR 'const' OR 'DELV' OR 'DELIVERY T' OR 'NYC AMBULA' OR 
'SHORT' OR 'UHal Renta' OR 'Snow Plow' OR 'UHAUL VAN' OR 'FDNY285 En' OR 
'STREE' OR 'suv /' OR 'SALTSPREAD' OR 'semitraile' OR 'CONCRETE M' OR 
'Sierra' OR 'POWER' OR 'harve' OR 'GMC SIENNA' OR 'HINO MOTOR' OR 
'BOOM' OR 'DIRT-' OR 'Fire rig t' OR 'DELIV' OR 'Uhaul' OR 
'USPS POSTA' OR 'FORKL' OR 'UPS VAN' OR 'sprinter' OR 'Jo/de' OR 
'STATION WA' OR 'FDNY TRUCK' OR 'P/SH' OR 'BOBCAT' OR 'BARRI' OR 
'38AB-' OR 'HEAVY' OR 'Trailor' OR 'tow' OR 'FORD-TCN' OR 
'UNKOWN' OR 'u haul' OR 'UTILITY VA' OR 'scoot' OR 'TLR' OR 
'OLM' OR 'Dollar Van' OR 'CARGO VAN' OR 'POLICE VEH' OR 'Left scene' OR 
'FORK' OR 'POSTA' OR 'psd' OR 'TRIALER' OR 'Lunch Wagon' OR 
'NA' OR 'CMIX' OR 'RV MOTOR H' OR 'US GOVERME' OR 'bmw moped' OR 
'HOME MADE' OR 'Van Camper' OR 'TRAC' OR 'UNATTACHED' OR 'SUBURBAN' OR 
'GOLF CART' OR 'FDNY LADDE' OR 'yello' OR 'CONSTRUCTI' OR 'HURSE' OR 
'GMC T' OR 'f1' OR 'Rental van'
	) as TempTable

--Replace faulty vehicle codes in TempTable with new ones
UPDATE ##TempTable
SET ##TempTable.VEHICLE_TYPE_CODE_3 = CASE ##TempTable.VEHICLE_TYPE_CODE_3
WHEN 'Station Wagon/Sport Utility Vehicle' THEN 'SUV'
WHEN 'PASSENGER VEHICLE' THEN 'Unidentified Passenger Vehicle'
WHEN 'SPORT UTILITY / STATION WAGON' THEN 'SUV'
WHEN 'Unknown' THEN null
WHEN 'Pick-up Truck' THEN 'Pickup Truck'
WHEN '4 dr sedan' THEN 'Sedan'
WHEN 'OTHER' THEN null
WHEN 'LARGE COM VEH(6 OR MORE TIRES)' THEN 'Unidentified Commercial Vehicles'
WHEN 'SMALL COM VEH(4 TIRES) ' THEN 'Unidentified Commercial Vehicles'
WHEN 'LIVERY VEHICLE' THEN 'Livery'
WHEN 'Tractor Truck Diesel' THEN 'Construction'
WHEN 'BICYCLE' THEN 'Bikes & Self Propelled Vehicles'
WHEN '2 dr sedan' THEN 'Sedan'
WHEN 'Dump' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'PK' THEN 'Pickup Truck'
WHEN 'Flat Bed' THEN 'Small Commercial Trucks - Flatbed & Chassis Cab'
WHEN 'Ambulance' THEN 'Ambulance'
WHEN 'Moped' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'Tow Truck / Wrecker' THEN 'Tow Trucks'
WHEN 'E-Bike' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'E-Scooter' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'Garbage or Refuse' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'Tractor Truck Gasoline' THEN 'Construction'
WHEN 'Carry All' THEN 'Carryall, Golf Carts & Similar'
WHEN 'Motorscooter' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'Chassis Cab' THEN 'Small Commercial Trucks - Flatbed & Chassis Cab'
WHEN 'Motorbike' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'TRAILER' THEN 'Trailers'
WHEN 'LIMO' THEN 'Limousine'
WHEN 'Concrete Mixer' THEN 'Construction'
WHEN 'FIRE TRUCK' THEN 'Box Truck'
WHEN 'subn' THEN null
WHEN 'Tanker' THEN 'Large Cargo Vehicles'
WHEN 'Pedicab' THEN 'Bikes & Self Propelled Vehicles'
WHEN 'Trail' THEN 'Trailers'
WHEN 'Truck' THEN null
WHEN 'AMBUL' THEN 'Ambulance'
WHEN 'SCOOTER' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'Multi-Wheeled Vehicle' THEN 'Unidentified Commercial Vehicles'
WHEN 'Refrigerated Van' THEN 'Refrigeration Trasport'
WHEN 'Lift Boom' THEN 'Construction'
WHEN '3-Door' THEN 'Sedan'
WHEN 'TOW TRUCK' THEN 'Tow Trucks'
WHEN 'School bus' THEN 'Schoolbus'
WHEN 'TRACT' THEN 'Construction'
WHEN 'UNK' THEN 'Construction'
WHEN 'Flat Rack' THEN 'Agriculture'
WHEN 'Stake or Rack' THEN 'Agriculture'
WHEN 'Bulk Agriculture' THEN 'Agriculture'
WHEN 'Armored Truck' THEN 'Armored Truck'
WHEN 'Beverage Truck' THEN 'Food & Beverage Service'
WHEN 'RV' THEN 'Motor Home'
WHEN 'SCHOO' THEN 'Schoolbus'
WHEN 'COM' THEN null
WHEN 'E-Bik' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'GARBAGE TR' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'FOOD' THEN 'Food & Beverage Service'
WHEN 'Pallet' THEN Null
WHEN 'Open Body' THEN Null
WHEN 'Fire' THEN 'Fire Department Vehicles'
WHEN 'motor home' THEN 'Motor Home'
WHEN 'TOW T' THEN 'Tow Trucks'
WHEN 'PASSENGER' THEN Null
WHEN 'FDNY FIRE' THEN 'Fire Department Vehicles'
WHEN 'PICK UP' THEN 'Pickup Truck'
WHEN 'MTA bus' THEN 'Bus'
WHEN 'FORD' THEN Null
WHEN 'COMMERCIAL' THEN 'Unidentified Commercial Vehicles'
WHEN 'Cargo' THEN Null
WHEN 'POWER SHOV' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'Utility' THEN Null
WHEN 'USPS' THEN 'USPS'
WHEN 'VAN TRUCK' THEN 'Van'
WHEN 'FDNY FIRET' THEN 'Fire Department Vehicles'
WHEN 'SANIT' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'UNKNO' THEN Null
WHEN 'C1' THEN Null
WHEN 'OMT' THEN Null
WHEN 'comme' THEN Null
WHEN 'firet' THEN 'Fire Department Vehicles'
WHEN 'TRACTOR TR' THEN 'Construction'
WHEN 'MTA B' THEN 'Bus'
WHEN 'Flatbed' THEN 'Small Commercial Trucks - Flatbed & Chassis Cab'
WHEN 'UTILI' THEN Null
WHEN 'ELECT' THEN Null
WHEN 'Motorized Home' THEN 'Motor Home'
WHEN 'Sprinter V' THEN 'Van'
WHEN 'PAS' THEN Null
WHEN 'FDNY' THEN 'Fire Department Vehicles'
WHEN 'FLAT' THEN 'Small Commercial Trucks - Flatbed & Chassis Cab'
WHEN 'PICKUP' THEN 'Pickup Truck'
WHEN 'box t' THEN 'Box Truck'
WHEN 'TRANSPORT' THEN Null
WHEN 'GOVER' THEN Null
WHEN 'DUMP TRUCK' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'pick up tr' THEN 'Pickup Truck'
WHEN 'UHAUL Trai' THEN 'Box Truck'
WHEN 'DSNY Garba' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'UTILITY TR' THEN Null
WHEN 'ICE CREAM' THEN 'Ice Cream Truck'
WHEN 'SPC' THEN Null
WHEN 'bsd' THEN Null
WHEN 'ECOLINE VA' THEN Null
WHEN 'WORK VAN' THEN 'Van'
WHEN 'Pickup with mounted Camper' THEN 'Pickup Truck'
WHEN 'UHAUL BOX' THEN 'Box Truck'
WHEN 'Moped scoo' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'MOTOR' THEN Null
WHEN 'MINIVAN' THEN Null
WHEN 'VERIZ' THEN Null
WHEN 'Freig' THEN Null
WHEN 'ELECTRIC S' THEN Null
WHEN 'UPS TRUCK' THEN 'Small Cargo Vehicles'
WHEN 'Vanette' THEN Null
WHEN 'JEEP' THEN 'SUV'
WHEN 'UNICYCLE' THEN 'Bikes & Self Propelled Vehicles'
WHEN 'fre' THEN Null
WHEN 'Ridgeline' THEN 'Pickup Truck'
WHEN 'tank' THEN 'Large Cargo Vehicles'
WHEN 'NYC SANITA' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'AMB' THEN 'Ambulance'
WHEN 'Tow-truck' THEN 'Tow Trucks'
WHEN 'TRL' THEN 'Trailers'
WHEN 'AMUBL' THEN 'Ambulance'
WHEN 'n/a' THEN Null
WHEN 'Horse' THEN 'Horse'
WHEN 'PICK-UP TR' THEN 'Pickup Truck'
WHEN 'USPS MAIL' THEN 'USPS'
WHEN 'Moving van' THEN 'Van'
WHEN 'FOOD TRUCK' THEN 'Food & Beverage Service'
WHEN 'road' THEN Null
WHEN 'BK' THEN Null
WHEN 'hrse' THEN 'Horse'
WHEN 'Motorhome' THEN 'Motor Home'
WHEN 'BOOM 60FT' THEN 'Construction'
WHEN 'DIRT BIKE' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'HOUSE ON W' THEN Null
WHEN 'Budget tru' THEN Null
WHEN 'Box' THEN 'Box Truck'
WHEN 'DUAL' THEN Null
WHEN 'VS2' THEN Null
WHEN 'vehicle tr' THEN Null
WHEN 'const' THEN 'Construction'
WHEN 'DELV' THEN 'Delivery'
WHEN 'DELIVERY T' THEN 'Delivery'
WHEN 'NYC AMBULA' THEN 'Ambulance'
WHEN 'SHORT' THEN 'Schoolbus'
WHEN 'UHal Renta' THEN 'Box Truck'
WHEN 'Snow Plow' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'UHAUL VAN' THEN 'Box Truck'
WHEN 'FDNY285 En' THEN 'Fire Department Vehicles'
WHEN 'STREE' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'suv /' THEN 'SUV'
WHEN 'SALTSPREAD' THEN 'Sanitation, Sweep & Public Utility Vehicles'
WHEN 'semitraile' THEN Null
WHEN 'CONCRETE M' THEN 'Construction'
WHEN 'Sierra' THEN Null
WHEN 'POWER' THEN Null
WHEN 'harve' THEN Null
WHEN 'GMC SIENNA' THEN Null
WHEN 'HINO MOTOR' THEN Null
WHEN 'BOOM' THEN Null
WHEN 'DIRT-' THEN Null
WHEN 'Fire rig t' THEN 'Fire Department Vehicles'
WHEN 'DELIV' THEN 'Delivery'
WHEN 'Uhaul' THEN 'Box Truck'
WHEN 'USPS POSTA' THEN 'USPS'
WHEN 'FORKL' THEN 'Construction'
WHEN 'UPS VAN' THEN 'Delivery'
WHEN 'sprinter' THEN Null
WHEN 'Jo/de' THEN Null
WHEN 'STATION WA' THEN Null
WHEN 'FDNY TRUCK' THEN 'Fire Department Vehicles'
WHEN 'P/SH' THEN Null
WHEN 'BOBCAT' THEN 'Construction'
WHEN 'BARRI' THEN Null
WHEN '38AB-' THEN Null
WHEN 'HEAVY' THEN Null
WHEN 'Trailor' THEN 'Trailers'
WHEN 'tow' THEN 'Tow Trucks'
WHEN 'FORD-TCN' THEN Null
WHEN 'UNKOWN' THEN Null
WHEN 'u haul' THEN 'Box Truck'
WHEN 'UTILITY VA' THEN Null
WHEN 'scoot' THEN 'Bikes & Self Propelled Vehicles'
WHEN 'TLR' THEN Null
WHEN 'OLM' THEN Null
WHEN 'Dollar Van' THEN Null
WHEN 'CARGO VAN' THEN Null
WHEN 'POLICE VEH' THEN 'Police'
WHEN 'Left scene' THEN Null
WHEN 'FORK' THEN 'Construction'
WHEN 'POSTA' THEN 'USPS'
WHEN 'psd' THEN Null
WHEN 'TRIALER' THEN 'Trailers'
WHEN 'Lunch Wagon' THEN 'Food & Beverage Service'
WHEN 'NA' THEN Null
WHEN 'CMIX' THEN Null
WHEN 'RV MOTOR H' THEN 'Motor Home'
WHEN 'US GOVERME' THEN Null
WHEN 'bmw moped' THEN 'Mopeds, Motorized Scooters & Similar'
WHEN 'HOME MADE' THEN Null
WHEN 'Van Camper' THEN 'Van'
WHEN 'TRAC' THEN Null
WHEN 'UNATTACHED' THEN Null
WHEN 'SUBURBAN' THEN Null
WHEN 'GOLF CART' THEN 'Carryall, Golf Carts & Similar'
WHEN 'FDNY LADDE' THEN 'Fire Department Vehicles'
WHEN 'yello' THEN Null
WHEN 'CONSTRUCTI' THEN 'Construction'
WHEN 'HURSE' THEN Null
WHEN 'GMC T' THEN Null
WHEN 'f1' THEN Null
WHEN 'Rental van' THEN 'Van'
ELSE 'Undefined'
END

--Overwrite the faulty vehicle codes in the original database with the new ones in TempTable, via a Join on CollisionID
UPDATE Target
SET Target.[VEHICLE_TYPE_CODE_3] = OG.[VEHICLE_TYPE_CODE_3]
FROM [NYC_Collisions].[dbo].[Motor_Vehicle_Collisions_-_Crashes] Target
JOIN tempdb.dbo.##TempTable OG
ON Target.[COLLISION_ID] = OG.[COLLISION_ID];

--Drop the TempTable
DROP TABLE ##TempTable