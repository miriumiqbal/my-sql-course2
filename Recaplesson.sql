SELECT DISTINCT [type] from airports


SELECT
    a.name
    ,latitude_deg
    ,longitude_deg
    ,a.iata_code
    ,a.elevation_ft
    ,ROUND(a.elevation_ft/3.28,1) AS ELEVATION_M
    ,a.iso_country
FROM
    airports a
WHERE a.[type] ='large_airport'
    AND a.continent ='EU'
    AND a.iso_country IN('GB','FR')
    AND a.latitude_deg BETWEEN 51 AND 54
ORDER BY a.name ASC

