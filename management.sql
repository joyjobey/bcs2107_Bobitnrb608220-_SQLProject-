CREATE DATABASE management;

CREATE TABLE `trailer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `trailernumber` int DEFAULT NULL,
  `trailerpark` int DEFAULT NULL,
  `manager` int DEFAULT NULL,
  `client` int DEFAULT NULL,
  `rentcharge` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `trailerpark` (`trailerpark`),
  KEY `manager` (`manager`),
  KEY `client` (`client`),
  CONSTRAINT `trailer_ibfk_1` FOREIGN KEY (`trailerpark`) REFERENCES `trailerpark` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `trailer_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `manager` (`staffid`) ON DELETE CASCADE,
  CONSTRAINT `trailer_ibfk_3` FOREIGN KEY (`client`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `clients` (
  `name` varchar(20) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `rentdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `flats` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `address` varchar(20) DEFAULT NULL,
  `manager` int DEFAULT NULL,
  `client` int DEFAULT NULL,
  `rentcharge` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `manager` (`manager`),
  KEY `client` (`client`),
  CONSTRAINT `flats_ibfk_1` FOREIGN KEY (`manager`) REFERENCES `manager` (`staffid`) ON DELETE CASCADE,
  CONSTRAINT `flats_ibfk_2` FOREIGN KEY (`client`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `manager` (
  `staffid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `trailerpark` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into manager( 
name) values ( 'Humphy');

insert into clients(name, rentdate)
values
('Jane', '2022-03-20'),
('Ted','2022-01-12'),
('Lorna','2022-02-20'),
('Jack','2022-01-23'),
('Peter','2022-04-20');

insert into trailer(trailernumber, trailerpark, manager,client, rentcharge) values
(10, 1,1,1,1500),
(10, 1,1,2,1500),
(10, 1,1,8,1500),
(10, 1,1,9,1500),
(10, 1,1,10,1500);

insert into trailerpark(Address) values ('avenue 12'),
('Kitengela'),('South B');

insert into flats(address,manager,client, rentcharge)
values
('Karen', 1, 1, 2000),
('Langata', 1, 2, 2000),
('Nakuru', 1, 8, 2000),
('Tigoni', 1, 9, 2000),
('Karen', 1, 10, 2000);

select * from clients;
select * from flats;
select * from trailer;
select * from trailerpark;
select * from manager;
