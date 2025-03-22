SELECT [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].VEHICLE_TYPE_CODE_3, COUNT(*) as count
FROM [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes]
GROUP BY [NYC_Collisions].dbo.[Motor_Vehicle_Collisions_-_Crashes].VEHICLE_TYPE_CODE_3
ORDER BY count DESC;