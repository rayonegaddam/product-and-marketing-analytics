-- Use ecommerce database
USE ecommerce;
DESC users_data;
SELECT * FROM users_data LIMIT 100;

-- Platform Localization and Global Footprint
SELECT  count(DISTINCT country) no_of_distinct_countries, count(DISTINCT language) no_of_distinct_languages
FROM users_data;

SELECT gender,SUM(socialNbFollowers) Total_no_of_followers 
FROM users_data 
GROUP BY gender;

SELECT count(hasProfilePicture) Totalusers_havinig_profile_picture 
FROM users_data 
WHERE hasProfilePicture = 'True';

-- Device Adaptation and App Ecosystem Metrics
SELECT count(hasAnyApp) Totalusers_having_anyapplication 
FROM users_data 
WHERE hasAnyApp = 'True';

SELECT count(hasAndroidApp) Totalusers_having_AndroidApp 
FROM users_data 
WHERE hasAndroidApp = 'True';

SELECT count(hasIosApp) Totalusers_having_IosApp 
FROM users_data 
WHERE hasIosApp = 'True';

-- GEOGRAPHIC DENSITIES (Buyer seller 
SELECT country , count(productsBought) buyer_count 
FROM users_data 
WHERE productsBought > 0  
GROUP BY country 
ORDER BY count(productsBought) DESC;

SELECT country , count(productsSold) seller_count  
FROM users_data 
WHERE productsSold > 0  
GROUP BY country 
ORDER BY count(productsSold) ASC,country;

SELECT country ,productsPassRate
FROM users_data 
WHERE productsPassRate>0 
GROUP BY country 
ORDER BY productsPassRate DESC LIMIT 10 ;

SELECT country ,max(productsPassRate) maxofProductPassRate
FROM  users_data 
GROUP BY country
ORDER BY max(productsPassRate) DESC LIMIT 10 ;

-- INTERACTION PROFILES (Wishlisted, liked but not bought)

SELECT language, count(identifierHash) AS user_count 
FROM users_data group by language; 

SELECT 'socialProductsLiked' as 'Female users',count(socialProductsLiked) as total_count 
FROM 
	users_data 
WHERE 
	gender = 'F' AND socialProductsLiked>0 
UNION 
SELECT 
	'productsWished' ,count(productsWished) 
FROM 
	users_data 
WHERE 
	gender = 'F' AND productsWished >0 ;


SELECT 
'Sellers' as Users, COUNT(productsSold) as count
FROM
    users_data
WHERE
    gender = 'M' AND productsSold > 0 
UNION SELECT 
 'Buyers', COUNT(productsBought)
FROM
    users_data
WHERE
    gender = 'M' AND productsBought > 0;
    
-- REGIONAL DEMOGRAPHIC BEHAVIOUR
SELECT 
	country, count(identifierHash),productsSold 
WHERE 
	productSold = 0 
GROUP BY country;

SELECT country,count(productsSold) as Sellers 
FROM users_data 
WHERE productsSold = 0 group by country;

SELECT country 
FROM users_data 
WHERE productsSold != 0 
Group BY country;

SELECT count(identifierHash) NoOfbuyers, country country_with_maximum_buyers 
FROM 
	users_data 
WHERE 
	productsBought > 0  
GROUP BY  country 
ORDER BY max(productsBought) DESC LIMIT 1 ;


SELECT country, count(gender) as Total_count_of_female 
FROM users_data 
WHERE gender = 'F' 
GROUP BY country 
ORDER BY Total_count_of_female DESC;

SELECT country, count(gender) as Total_count_of_male
FROM users_data 
WHERE gender = 'M'
GROUP BY country 
ORDER BY Total_count_of_male desc;

-- CHURN AND STAGNATION
    
SELECT * FROM users_data 
ORDER BY daysSinceLastLogin , productsBought DESC LIMIT 110;

SELECT count(gender) as female_count 
FROM users_data 
WHERE daysSinceLastLogin >= 100 AND gender = 'F';

SELECT count(gender) as male_count 
FROM users_data 
WHERE daysSinceLastLogin >= 100 AND gender = 'M';
