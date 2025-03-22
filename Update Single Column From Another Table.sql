UPDATE Target
SET Target.[VEHICLE_TYPE_CODE_4] = OG.[VEHICLE_TYPE_CODE_4]
FROM [NYC_Collisions].[dbo].[Motor_Vehicle_Collisions_-_Crashes] Target
JOIN  [NYC_Collisions_OG].[dbo].[Motor_Vehicle_Collisions_-_Crashes] OG
	ON Target.[COLLISION_ID] = OG.[COLLISION_ID]; 