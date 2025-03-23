--Updates VEHICLE_TYPE_CODE_3

--Drop Existing TempTable if one exists
IF OBJECT_ID('tempdb.dbo.##TempTable') IS NOT NULL
DROP TABLE ##TempTable

--Create TempTable from CollisionID and the Vehicle Type Codes that we want to change
SELECT * INTO ##TempTable
FROM (
SELECT [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].COLLISION_ID, [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].VEHICLE_TYPE_CODE_3
FROM [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes]
WHERE
[VEHICLE_TYPE_CODE_3] = 'Station Wagon/Sport Utility Vehicle' OR
[VEHICLE_TYPE_CODE_3] = 'PASSENGER VEHICLE' OR
[VEHICLE_TYPE_CODE_3] = 'SPORT UTILITY / STATION WAGON' OR
[VEHICLE_TYPE_CODE_3] = 'Unknown' OR
[VEHICLE_TYPE_CODE_3] = 'Pick-up Truck' OR
[VEHICLE_TYPE_CODE_3] = '4 dr sedan' OR
[VEHICLE_TYPE_CODE_3] = 'OTHER' OR
[VEHICLE_TYPE_CODE_3] = 'LARGE COM VEH(6 OR MORE TIRES)' OR
[VEHICLE_TYPE_CODE_3] = 'SMALL COM VEH(4 TIRES) ' OR
[VEHICLE_TYPE_CODE_3] = 'LIVERY VEHICLE' OR
[VEHICLE_TYPE_CODE_3] = 'Tractor Truck Diesel' OR
[VEHICLE_TYPE_CODE_3] = 'BICYCLE' OR
[VEHICLE_TYPE_CODE_3] = '2 dr sedan' OR
[VEHICLE_TYPE_CODE_3] = 'Dump' OR
[VEHICLE_TYPE_CODE_3] = 'PK' OR
[VEHICLE_TYPE_CODE_3] = 'Flat Bed' OR
[VEHICLE_TYPE_CODE_3] = 'Ambulance' OR
[VEHICLE_TYPE_CODE_3] = 'Moped' OR
[VEHICLE_TYPE_CODE_3] = 'Tow Truck / Wrecker' OR
[VEHICLE_TYPE_CODE_3] = 'E-Bike' OR
[VEHICLE_TYPE_CODE_3] = 'E-Scooter' OR
[VEHICLE_TYPE_CODE_3] = 'Garbage or Refuse' OR
[VEHICLE_TYPE_CODE_3] = 'Tractor Truck Gasoline' OR
[VEHICLE_TYPE_CODE_3] = 'Carry All' OR
[VEHICLE_TYPE_CODE_3] = 'Motorscooter' OR
[VEHICLE_TYPE_CODE_3] = 'Chassis Cab' OR
[VEHICLE_TYPE_CODE_3] = 'Motorbike' OR
[VEHICLE_TYPE_CODE_3] = 'TRAILER' OR
[VEHICLE_TYPE_CODE_3] = 'LIMO' OR
[VEHICLE_TYPE_CODE_3] = 'Concrete Mixer' OR
[VEHICLE_TYPE_CODE_3] = 'FIRE TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'subn' OR
[VEHICLE_TYPE_CODE_3] = 'Tanker' OR
[VEHICLE_TYPE_CODE_3] = 'Pedicab' OR
[VEHICLE_TYPE_CODE_3] = 'Trail' OR
[VEHICLE_TYPE_CODE_3] = 'Truck' OR
[VEHICLE_TYPE_CODE_3] = 'AMBUL' OR
[VEHICLE_TYPE_CODE_3] = 'SCOOTER' OR
[VEHICLE_TYPE_CODE_3] = 'Multi-Wheeled Vehicle' OR
[VEHICLE_TYPE_CODE_3] = 'Refrigerated Van' OR
[VEHICLE_TYPE_CODE_3] = 'Lift Boom' OR
[VEHICLE_TYPE_CODE_3] = '3-Door' OR
[VEHICLE_TYPE_CODE_3] = 'TOW TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'School bus' OR
[VEHICLE_TYPE_CODE_3] = 'TRACT' OR
[VEHICLE_TYPE_CODE_3] = 'UNK' OR
[VEHICLE_TYPE_CODE_3] = 'Flat Rack' OR
[VEHICLE_TYPE_CODE_3] = 'Stake or Rack' OR
[VEHICLE_TYPE_CODE_3] = 'Bulk Agriculture' OR
[VEHICLE_TYPE_CODE_3] = 'Armored Truck' OR
[VEHICLE_TYPE_CODE_3] = 'Beverage Truck' OR
[VEHICLE_TYPE_CODE_3] = 'RV' OR
[VEHICLE_TYPE_CODE_3] = 'SCHOO' OR
[VEHICLE_TYPE_CODE_3] = 'COM' OR
[VEHICLE_TYPE_CODE_3] = 'E-Bik' OR
[VEHICLE_TYPE_CODE_3] = 'GARBAGE TR' OR
[VEHICLE_TYPE_CODE_3] = 'FOOD' OR
[VEHICLE_TYPE_CODE_3] = 'Pallet' OR
[VEHICLE_TYPE_CODE_3] = 'Open Body' OR
[VEHICLE_TYPE_CODE_3] = 'Fire' OR
[VEHICLE_TYPE_CODE_3] = 'motor home' OR
[VEHICLE_TYPE_CODE_3] = 'TOW T' OR
[VEHICLE_TYPE_CODE_3] = 'PASSENGER' OR
[VEHICLE_TYPE_CODE_3] = 'FDNY FIRE' OR
[VEHICLE_TYPE_CODE_3] = 'PICK UP' OR
[VEHICLE_TYPE_CODE_3] = 'MTA bus' OR
[VEHICLE_TYPE_CODE_3] = 'FORD' OR
[VEHICLE_TYPE_CODE_3] = 'COMMERCIAL' OR
[VEHICLE_TYPE_CODE_3] = 'Cargo' OR
[VEHICLE_TYPE_CODE_3] = 'POWER SHOV' OR
[VEHICLE_TYPE_CODE_3] = 'Utility' OR
[VEHICLE_TYPE_CODE_3] = 'USPS' OR
[VEHICLE_TYPE_CODE_3] = 'VAN TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'FDNY FIRET' OR
[VEHICLE_TYPE_CODE_3] = 'SANIT' OR
[VEHICLE_TYPE_CODE_3] = 'UNKNO' OR
[VEHICLE_TYPE_CODE_3] = 'C1' OR
[VEHICLE_TYPE_CODE_3] = 'OMT' OR
[VEHICLE_TYPE_CODE_3] = 'comme' OR
[VEHICLE_TYPE_CODE_3] = 'firet' OR
[VEHICLE_TYPE_CODE_3] = 'TRACTOR TR' OR
[VEHICLE_TYPE_CODE_3] = 'MTA B' OR
[VEHICLE_TYPE_CODE_3] = 'Flatbed' OR
[VEHICLE_TYPE_CODE_3] = 'UTILI' OR
[VEHICLE_TYPE_CODE_3] = 'ELECT' OR
[VEHICLE_TYPE_CODE_3] = 'Motorized Home' OR
[VEHICLE_TYPE_CODE_3] = 'Sprinter V' OR
[VEHICLE_TYPE_CODE_3] = 'PAS' OR
[VEHICLE_TYPE_CODE_3] = 'FDNY' OR
[VEHICLE_TYPE_CODE_3] = 'FLAT' OR
[VEHICLE_TYPE_CODE_3] = 'PICKUP' OR
[VEHICLE_TYPE_CODE_3] = 'box t' OR
[VEHICLE_TYPE_CODE_3] = 'TRANSPORT' OR
[VEHICLE_TYPE_CODE_3] = 'GOVER' OR
[VEHICLE_TYPE_CODE_3] = 'DUMP TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'pick up tr' OR
[VEHICLE_TYPE_CODE_3] = 'UHAUL Trai' OR
[VEHICLE_TYPE_CODE_3] = 'DSNY Garba' OR
[VEHICLE_TYPE_CODE_3] = 'UTILITY TR' OR
[VEHICLE_TYPE_CODE_3] = 'ICE CREAM' OR
[VEHICLE_TYPE_CODE_3] = 'SPC' OR
[VEHICLE_TYPE_CODE_3] = 'bsd' OR
[VEHICLE_TYPE_CODE_3] = 'ECOLINE VA' OR
[VEHICLE_TYPE_CODE_3] = 'WORK VAN' OR
[VEHICLE_TYPE_CODE_3] = 'Pickup with mounted Camper' OR
[VEHICLE_TYPE_CODE_3] = 'UHAUL BOX' OR
[VEHICLE_TYPE_CODE_3] = 'Moped scoo' OR
[VEHICLE_TYPE_CODE_3] = 'MOTOR' OR
[VEHICLE_TYPE_CODE_3] = 'MINIVAN' OR
[VEHICLE_TYPE_CODE_3] = 'VERIZ' OR
[VEHICLE_TYPE_CODE_3] = 'Freig' OR
[VEHICLE_TYPE_CODE_3] = 'ELECTRIC S' OR
[VEHICLE_TYPE_CODE_3] = 'UPS TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'Vanette' OR
[VEHICLE_TYPE_CODE_3] = 'JEEP' OR
[VEHICLE_TYPE_CODE_3] = 'UNICYCLE' OR
[VEHICLE_TYPE_CODE_3] = 'fre' OR
[VEHICLE_TYPE_CODE_3] = 'Ridgeline' OR
[VEHICLE_TYPE_CODE_3] = 'tank' OR
[VEHICLE_TYPE_CODE_3] = 'NYC SANITA' OR
[VEHICLE_TYPE_CODE_3] = 'AMB' OR
[VEHICLE_TYPE_CODE_3] = 'Tow-truck' OR
[VEHICLE_TYPE_CODE_3] = 'TRL' OR
[VEHICLE_TYPE_CODE_3] = 'AMUBL' OR
[VEHICLE_TYPE_CODE_3] = 'n/a' OR
[VEHICLE_TYPE_CODE_3] = 'Horse' OR
[VEHICLE_TYPE_CODE_3] = 'PICK-UP TR' OR
[VEHICLE_TYPE_CODE_3] = 'USPS MAIL' OR
[VEHICLE_TYPE_CODE_3] = 'Moving van' OR
[VEHICLE_TYPE_CODE_3] = 'FOOD TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'road' OR
[VEHICLE_TYPE_CODE_3] = 'BK' OR
[VEHICLE_TYPE_CODE_3] = 'hrse' OR
[VEHICLE_TYPE_CODE_3] = 'Motorhome' OR
[VEHICLE_TYPE_CODE_3] = 'BOOM 60FT' OR
[VEHICLE_TYPE_CODE_3] = 'DIRT BIKE' OR
[VEHICLE_TYPE_CODE_3] = 'HOUSE ON W' OR
[VEHICLE_TYPE_CODE_3] = 'Budget tru' OR
[VEHICLE_TYPE_CODE_3] = 'Box' OR
[VEHICLE_TYPE_CODE_3] = 'DUAL' OR
[VEHICLE_TYPE_CODE_3] = 'VS2' OR
[VEHICLE_TYPE_CODE_3] = 'vehicle tr' OR
[VEHICLE_TYPE_CODE_3] = 'const' OR
[VEHICLE_TYPE_CODE_3] = 'DELV' OR
[VEHICLE_TYPE_CODE_3] = 'DELIVERY T' OR
[VEHICLE_TYPE_CODE_3] = 'NYC AMBULA' OR
[VEHICLE_TYPE_CODE_3] = 'SHORT' OR
[VEHICLE_TYPE_CODE_3] = 'UHal Renta' OR
[VEHICLE_TYPE_CODE_3] = 'Snow Plow' OR
[VEHICLE_TYPE_CODE_3] = 'UHAUL VAN' OR
[VEHICLE_TYPE_CODE_3] = 'FDNY285 En' OR
[VEHICLE_TYPE_CODE_3] = 'STREE' OR
[VEHICLE_TYPE_CODE_3] = 'suv /' OR
[VEHICLE_TYPE_CODE_3] = 'SALTSPREAD' OR
[VEHICLE_TYPE_CODE_3] = 'semitraile' OR
[VEHICLE_TYPE_CODE_3] = 'CONCRETE M' OR
[VEHICLE_TYPE_CODE_3] = 'Sierra' OR
[VEHICLE_TYPE_CODE_3] = 'POWER' OR
[VEHICLE_TYPE_CODE_3] = 'harve' OR
[VEHICLE_TYPE_CODE_3] = 'GMC SIENNA' OR
[VEHICLE_TYPE_CODE_3] = 'HINO MOTOR' OR
[VEHICLE_TYPE_CODE_3] = 'BOOM' OR
[VEHICLE_TYPE_CODE_3] = 'DIRT-' OR
[VEHICLE_TYPE_CODE_3] = 'Fire rig t' OR
[VEHICLE_TYPE_CODE_3] = 'DELIV' OR
[VEHICLE_TYPE_CODE_3] = 'Uhaul' OR
[VEHICLE_TYPE_CODE_3] = 'USPS POSTA' OR
[VEHICLE_TYPE_CODE_3] = 'FORKL' OR
[VEHICLE_TYPE_CODE_3] = 'UPS VAN' OR
[VEHICLE_TYPE_CODE_3] = 'sprinter' OR
[VEHICLE_TYPE_CODE_3] = 'Jo/de' OR
[VEHICLE_TYPE_CODE_3] = 'STATION WA' OR
[VEHICLE_TYPE_CODE_3] = 'FDNY TRUCK' OR
[VEHICLE_TYPE_CODE_3] = 'P/SH' OR
[VEHICLE_TYPE_CODE_3] = 'BOBCAT' OR
[VEHICLE_TYPE_CODE_3] = 'BARRI' OR
[VEHICLE_TYPE_CODE_3] = '38AB-' OR
[VEHICLE_TYPE_CODE_3] = 'HEAVY' OR
[VEHICLE_TYPE_CODE_3] = 'Trailor' OR
[VEHICLE_TYPE_CODE_3] = 'tow' OR
[VEHICLE_TYPE_CODE_3] = 'FORD-TCN' OR
[VEHICLE_TYPE_CODE_3] = 'UNKOWN' OR
[VEHICLE_TYPE_CODE_3] = 'u haul' OR
[VEHICLE_TYPE_CODE_3] = 'UTILITY VA' OR
[VEHICLE_TYPE_CODE_3] = 'scoot' OR
[VEHICLE_TYPE_CODE_3] = 'TLR' OR
[VEHICLE_TYPE_CODE_3] = 'OLM' OR
[VEHICLE_TYPE_CODE_3] = 'Dollar Van' OR
[VEHICLE_TYPE_CODE_3] = 'CARGO VAN' OR
[VEHICLE_TYPE_CODE_3] = 'POLICE VEH' OR
[VEHICLE_TYPE_CODE_3] = 'Left scene' OR
[VEHICLE_TYPE_CODE_3] = 'FORK' OR
[VEHICLE_TYPE_CODE_3] = 'POSTA' OR
[VEHICLE_TYPE_CODE_3] = 'psd' OR
[VEHICLE_TYPE_CODE_3] = 'TRIALER' OR
[VEHICLE_TYPE_CODE_3] = 'Lunch Wagon' OR
[VEHICLE_TYPE_CODE_3] = 'NA' OR
[VEHICLE_TYPE_CODE_3] = 'CMIX' OR
[VEHICLE_TYPE_CODE_3] = 'RV MOTOR H' OR
[VEHICLE_TYPE_CODE_3] = 'US GOVERME' OR
[VEHICLE_TYPE_CODE_3] = 'bmw moped' OR
[VEHICLE_TYPE_CODE_3] = 'HOME MADE' OR
[VEHICLE_TYPE_CODE_3] = 'Van Camper' OR
[VEHICLE_TYPE_CODE_3] = 'TRAC' OR
[VEHICLE_TYPE_CODE_3] = 'UNATTACHED' OR
[VEHICLE_TYPE_CODE_3] = 'SUBURBAN' OR
[VEHICLE_TYPE_CODE_3] = 'GOLF CART' OR
[VEHICLE_TYPE_CODE_3] = 'FDNY LADDE' OR
[VEHICLE_TYPE_CODE_3] = 'yello' OR
[VEHICLE_TYPE_CODE_3] = 'CONSTRUCTI' OR
[VEHICLE_TYPE_CODE_3] = 'HURSE' OR
[VEHICLE_TYPE_CODE_3] = 'GMC T' OR
[VEHICLE_TYPE_CODE_3] = 'f1' OR
[VEHICLE_TYPE_CODE_3] = 'Rental van'
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