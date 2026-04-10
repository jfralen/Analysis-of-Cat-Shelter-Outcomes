Color

SELECT 
    trim(color1) AS color,
    COUNT(*) AS total_animals,
    SUM(CASE 
            WHEN outcome_type = 'Adoption' THEN 1 
            ELSE 0 
        END) AS adopted,
    ROUND(
        SUM(CASE 
                WHEN outcome_type = 'Adoption' THEN 1 
                ELSE 0 
            END) * 1.0 / COUNT(*), 
        4
    ) AS adoption_rate,
    SUM(CASE
    		WHEN outcome_type = 'Transfer' THEN 1
    		ELSE 0
    	END) AS Transfered,
    ROUND(
    	SUM(CASE
    			WHEN outcome_type = 'Transfer' THEN 1
    			ELSE 0
    		END) * 1.0 / Count(*),
    	4
    ) AS transfer_rate,
    SUM(CASE
    		WHEN outcome_type = 'Return to Owner' THEN 1
    		ELSE 0
    	END) AS Returned,
    ROUND(
    	SUM(CASE
    			WHEN outcome_type = 'Return to Owner' THEN 1
    			ELSE 0
    		END) * 1.0 / Count(*),
    	4
    ) AS return_rate,
        ROUND(
    (
        SUM(CASE WHEN outcome_type = 'Adoption' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
        +
        SUM(CASE WHEN outcome_type = 'Transfer' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
        +
        SUM(CASE WHEN outcome_type = 'Return to Owner' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
    ),
    4
) AS good_outcomes
FROM aac_shelter_cat_outcome_eng
WHERE trim(color1) <> 'Breed Specific'
GROUP BY trim(color1)
HAVING total_animals > 30
ORDER BY good_outcomes DESC

Age

SELECT 
    round((strftime('%s', "datetime") - strftime('%s', date_of_birth)) / 31449600.0, 0) AS years,
    COUNT(*) AS total_animals,
    SUM(CASE 
            WHEN outcome_type = 'Adoption' THEN 1 
            ELSE 0 
        END) AS adopted,
    ROUND(
        SUM(CASE 
                WHEN outcome_type = 'Adoption' THEN 1 
                ELSE 0 
            END) * 1.0 / COUNT(*), 
        4
    ) AS adoption_rate,
    SUM(CASE
    		WHEN outcome_type = 'Transfer' THEN 1
    		ELSE 0
    	END) AS Transfered,
    ROUND(
    	SUM(CASE
    			WHEN outcome_type = 'Transfer' THEN 1
    			ELSE 0
    		END) * 1.0 / Count(*),
    	4
    ) AS transfer_rate,
    SUM(CASE
    		WHEN outcome_type = 'Return to Owner' THEN 1
    		ELSE 0
    	END) AS Returned,
    ROUND(
    	SUM(CASE
    			WHEN outcome_type = 'Return to Owner' THEN 1
    			ELSE 0
    		END) * 1.0 / Count(*),
    	4
    ) AS return_rate,
    ROUND(
    (
        SUM(CASE WHEN outcome_type = 'Adoption' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
        +
        SUM(CASE WHEN outcome_type = 'Transfer' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
        +
        SUM(CASE WHEN outcome_type = 'Return to Owner' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
    ),
    4
) AS good_outcomes
FROM aac_shelter_cat_outcome_eng
GROUP BY years
ORDER BY good_outcomes DESC

Breed

SELECT 
    breed,
    COUNT(*) AS total_animals,
    SUM(CASE 
            WHEN outcome_type = 'Adoption' THEN 1 
            ELSE 0 
        END) AS adopted,
    ROUND(
        SUM(CASE 
                WHEN outcome_type = 'Adoption' THEN 1 
                ELSE 0 
            END) * 1.0 / COUNT(*), 
        4
    ) AS adoption_rate,
    SUM(CASE
    		WHEN outcome_type = 'Transfer' THEN 1
    		ELSE 0
    	END) AS Transfered,
    ROUND(
    	SUM(CASE
    			WHEN outcome_type = 'Transfer' THEN 1
    			ELSE 0
    		END) * 1.0 / Count(*),
    	4
    ) AS transfer_rate,
    SUM(CASE
    		WHEN outcome_type = 'Return to Owner' THEN 1
    		ELSE 0
    	END) AS Returned,
    ROUND(
    	SUM(CASE
    			WHEN outcome_type = 'Return to Owner' THEN 1
    			ELSE 0
    		END) * 1.0 / Count(*),
    	4
    ) AS return_rate,
        ROUND(
    (
        SUM(CASE WHEN outcome_type = 'Adoption' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
        +
        SUM(CASE WHEN outcome_type = 'Transfer' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
        +
        SUM(CASE WHEN outcome_type = 'Return to Owner' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)
    ),
    4
) AS good_outcomes
FROM aac_shelter_cat_outcome_eng
GROUP BY breed
HAVING total_animals > 30
ORDER BY good_outcomes DESC