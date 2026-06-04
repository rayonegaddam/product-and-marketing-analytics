SELECT * FROM users;
-- Find the 5 oldest users of the Instagram from the database provided
SELECT username, created_at FROM users ORDER BY created_at LIMIT 5;

-- Find the users who have never posted a single photo on Instagram
SELECT * FROM photos;
SELECT user_id FROM photos WHERE photos.user_id != users.user_id;


-- Identify the winner of the contest and provide their details to the team: Harley_Lind18
SELECT * FROM likes;
SELECT user_id,photo_id,count(photo_id) FROM likes group by photo_id ORDER BY count(photo_id) DESC;
SELECT username FROM users WHERE id = 3;

-- Identify and suggest the top 5 most commonly used hashtags on the platform
Select * from tags;
SELECT * from photo_tags;
SELECT tag_id,count(tag_id) from photo_tags group by tag_id order by count(tag_id) DESC limit 5;
-- Smile,beach, party, fun, concert

-- What day of the week do most users register on? Provide insights on when to schedule an ad campaign
SELECT * FROM users;
SELECT count(id),Dayofweek(created_at) FROM users group by Dayofweek(Created_at);


-- INVESTOR METRICS

-- Provide how many times does average user posts on Instagram. Also, provide the total number of photos on Instagram/total number of users
SELECT * FROM photos;
-- Average of photos posted by users
SELECT count( distinct user_id) as no_of_users from photos;
select count(id) as no_of_photos from photos;
select count(id)/ count(distinct user_id) as Avg_of_photos_posted_by_user from photos;

-- Detecting bots or fake users

Select * from likes;
SELECT user_id
FROM likes
GROUP BY user_id
HAVING COUNT(DISTINCT photo_id) = (SELECT max(DISTINCT photo_id) FROM likes);


