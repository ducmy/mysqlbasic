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

INSERT INTO db.photos
(id, url, user_id)
VALUES(1, 'http://img1.jpg', 4);
INSERT INTO db.photos
(id, url, user_id)
VALUES(2, 'http://img2.jpg', 4);
INSERT INTO db.photos
(id, url, user_id)
VALUES(3, 'http://img3.jpg', 1);
INSERT INTO db.photos
(id, url, user_id)
VALUES(4, 'http://img4.jpg', 2);


INSERT INTO users
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









