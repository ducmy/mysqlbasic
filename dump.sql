## Creata Table

CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


## dump_data

INSERT INTO db.users
(id, username, email)
VALUES(1, 'monaha93', 'emery.becker@yahoo.com');
INSERT INTO db.users
(id, username, email)
VALUES(2, 'pfeffer', 'lesly88@hotmail.com');
INSERT INTO db.users
(id, username, email)
VALUES(3, '99stroman', 'blaze68@hotmail.com');
INSERT INTO db.users
(id, username, email)
VALUES(4, 'sim3nonis', 'nedra1@yahoo.com');

INSERT INTO db.users
(id, username, email, `JSON_ARRAYAGG(photos.url)`)
VALUES(1, 'monaha93', 'emery.becker@yahoo.com', '["http://img3.jpg"]');
INSERT INTO db.users
(id, username, email, `JSON_ARRAYAGG(photos.url)`)
VALUES(2, 'pfeffer', 'lesly88@hotmail.com', '["http://img4.jpg"]');
INSERT INTO db.users
(id, username, email, `JSON_ARRAYAGG(photos.url)`)
VALUES(4, 'sim3nonis', 'nedra1@yahoo.com', '["http://img1.jpg", "http://img2.jpg"]');







