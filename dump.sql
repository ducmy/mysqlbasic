show tables;


CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


-- Insert Data

INSERT INTO users
(id, username, email)
VALUES(1, 'monaha93', 'emery.becker@yahoo.com'),
(2, 'pfeffer', 'lesly88@hotmail.com'),
(3, '99stroman', 'blaze68@hotmail.com'),
(4, 'sim3nonis', 'nedra1@yahoo.com');

INSERT INTO photos
(id, url, user_id)
VALUES(1, 'http://img1.jpg', 4),
(2, 'http://img2.jpg', 4),
(3, 'http://img3.jpg', 1),
(4, 'http://img4.jpg', 2);

-- Check photo & user
SELECT * FROM photos;
SELECT * FROM  users;

-- User has photo list

-- Join
SELECT users.id, users.username, JSON_ARRAYAGG(photos.url) as images from users, photos  
WHERE users.id = photos.user_id
group by users.id
order by users.username;

SELECT users.id, users.username, JSON_ARRAYAGG(photos.url) as images FROM users
left join photos on users.id = photos.user_id
group by users.id
order by users.username;


-- Photo belong user
SELECT photos.id, photos.url, users.username FROM photos, users
WHERE users.id = photos.user_id
order by id;

-- CRUD Photos
-- Add new record
INSERT INTO photos (url, user_id)
values ('http://img5.jpg', 3);

SELECT * FROM photos WHERE user_id = 3;

update photos
set url = 'http://img22.jpg'
where id = :photo_id;

DELETE from photos
WHERE id = :photo_id;


SELECT * FROM photos WHERE id = :photo_id;


DROP table users;
DROP table photos;
