CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL
);

CREATE TABLE product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    seller_id INTEGER NOT NULL,
    FOREIGN KEY (seller_id) REFERENCES user(id)
);

CREATE TABLE purchase (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER NOT NULL,
    buyer_id INTEGER NOT NULL,
    purchase_date DATETIME NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (buyer_id) REFERENCES user(id)
);

-- https://www.generatedata.com/

INSERT INTO `user` (`name`,`age`,`country`) VALUES
    ("Timothy York",86,"Peru"),
    ("Rylee Conner",78,"Peru"),
    ("Dominique Vinson",70,"Peru"),
    ("Ezekiel Herman",69,"Peru"),
    ("Perry Hinton",44,"Brazil"),
    ("Reese Long",76,"Brazil"),
    ("Leo Jarvis",28,"Brazil"),
    ("Hilel Patel",66,"Brazil"),
    ("Gail Blackburn",73,"Germany"),
    ("Guinevere Cox",87,"Germany"),
    ("Ira Kerr",40,"Germany"),
    ("Amal Stark",69,"Germany"),
    ("Rae Moss",27,"France"),
    ("Mikayla English",57,"France"),
    ("Simon Dennis",78,"Greenland"),
    ("Mallory Mendoza",58,"Taiwan"),
    ("Jocelyn Bishop",56,"Taiwan"),
    ("Ezra Palmer",61,"Taiwan"),
    ("Arden Macias",88,"Taiwan"),
    ("Warren Torres",43,"Taiwan");

INSERT INTO `product` (`name`,`price`,`seller_id`) VALUES
    ("Daihatsu","-62791.63",3),
    ("General Motors","94658.40",13),
    ("Skoda","-39434.08",7),
    ("Cadillac","-100189.69",4),
    ("JLR","97371.02",8),
    ("Dodge","62418.83",1),
    ("Mazda","49374.96",7),
    ("General Motors","163411.21",7),
    ("Honda","144956.71",8),
    ("Isuzu","107392.59",6),
    ("Chevrolet","127406.98",4),
    ("General Motors","115670.24",5),
    ("Lincoln","161119.54",4),
    ("Hyundai Motors","1-5856.94",4),
    ("Peugeot","143304.36",3),
    ("Chevrolet","124948.43",14),
    ("Fiat","-122028.49",13),
    ("Suzuki","24726.35",4),
    ("Citroën","77848.70",13),
    ("Dacia","129153.35",12),
    ("General Motors","18671.84",4),
    ("Jeep","26374.28",11),
    ("Tata Motors","82170.64",4),
    ("Dodge","-184412.42",3),
    ("Renault","176972.59",12),
    ("BMW","12098.02",2),
    ("Acura","48122.12",1),
    ("Ford","58193.09",3),
    ("JLR","103655.95",11),
    ("BMW","152030.82",10),
    ("Kia Motors","137817.95",4),
    ("Nissan","39527.95",3),
    ("Dongfeng Motor","176060.35",11),
    ("General Motors","50558.10",1),
    ("Hyundai Motors","14038.65",4),
    ("Peugeot","94796.33",4),
    ("Mitsubishi Motors","44400.87",2),
    ("Nissan","173669.73",2),
    ("MINI","96330.09",5),
    ("Mitsubishi Motors","66260.42",3),
    ("Porsche","106710.81",13),
    ("Dongfeng Motor","-195688.55",5),
    ("Buick","74109.70",7),
    ("Peugeot","-38154.17",5),
    ("Hyundai Motors","87849.55",2),
    ("FAW","74398.78",9),
    ("JLR","141169.91",14),
    ("MINI","52707.51",5),
    ("Ferrari","108821.88",2),
    ("Kia Motors","114589.34",2);

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (27,9,"2018-30-04"),
    (26,20,"2018-12-07"),
    (17,9,"2018-19-02"),
    (4,13,"2018-05-09"),
    (45,9,"2017-07-10"),
    (2,13,"2018-20-03"),
    (24,6,"2018-16-08"),
    (13,7,"2018-01-05"),
    (15,8,"2018-09-06"),
    (43,17,"2019-03-04"),
    (43,8,"2017-19-12"),
    (22,13,"2019-03-02"),
    (27,15,"2018-27-02"),
    (15,18,"2019-24-04"),
    (8,13,"2018-27-06"),
    (24,17,"2018-08-06"),
    (34,18,"2018-23-08"),
    (6,11,"2018-05-01"),
    (47,15,"2017-11-09"),
    (36,9,"2018-25-01"),
    (17,19,"2018-01-10"),
    (43,18,"2018-27-02"),
    (26,9,"2019-17-03"),
    (45,15,"2017-19-10"),
    (28,16,"2018-17-02"),
    (47,14,"2018-23-04"),
    (4,19,"2019-19-05"),
    (5,16,"2018-02-06"),
    (6,15,"2019-04-04"),
    (8,15,"2018-09-06"),
    (6,15,"2018-21-11"),
    (9,17,"2019-06-06"),
    (17,16,"2018-22-07"),
    (32,11,"2018-26-10"),
    (23,16,"2018-27-05"),
    (13,6,"2019-14-06"),
    (35,8,"2017-15-09"),
    (45,17,"2018-02-08"),
    (11,8,"2019-06-06"),
    (13,17,"2018-04-08"),
    (14,16,"2018-07-05"),
    (45,8,"2019-30-01"),
    (22,6,"2018-17-05"),
    (29,8,"2017-21-09"),
    (31,10,"2019-28-01"),
    (33,8,"2017-03-12"),
    (31,15,"2019-19-07"),
    (31,14,"2019-13-03"),
    (12,11,"2017-14-09"),
    (10,8,"2017-02-12"),
    (21,11,"2018-13-05"),
    (15,11,"2018-01-10"),
    (45,7,"2019-27-05"),
    (15,14,"2018-26-04"),
    (10,19,"2018-08-02"),
    (23,17,"2019-07-03"),
    (41,9,"2017-16-11"),
    (26,18,"2019-06-04"),
    (45,11,"2019-06-09"),
    (24,20,"2018-09-05"),
    (50,8,"2019-24-08"),
    (37,18,"2017-14-12"),
    (34,7,"2019-18-01"),
    (28,17,"2019-05-06"),
    (23,9,"2019-08-01"),
    (10,9,"2019-31-07"),
    (38,14,"2018-06-02"),
    (2,6,"2019-15-08"),
    (43,18,"2018-25-08"),
    (24,15,"2018-20-04"),
    (18,17,"2017-29-12"),
    (21,19,"2019-06-02"),
    (1,11,"2019-22-07"),
    (12,8,"2019-13-01"),
    (21,14,"2019-26-05"),
    (42,20,"2018-27-10"),
    (36,14,"2018-27-09"),
    (48,6,"2017-12-11"),
    (24,11,"2019-05-04"),
    (47,9,"2018-28-07"),
    (39,13,"2019-05-06"),
    (40,13,"2019-05-01"),
    (36,13,"2018-23-04"),
    (44,17,"2018-29-07"),
    (50,20,"2019-15-09"),
    (14,18,"2018-26-10"),
    (33,15,"2019-21-07"),
    (40,9,"2018-17-10"),
    (46,11,"2018-08-01"),
    (49,15,"2019-07-07"),
    (33,9,"2019-22-02"),
    (50,10,"2019-15-01"),
    (41,8,"2019-11-08"),
    (49,8,"2018-09-02"),
    (41,14,"2019-31-05"),
    (1,8,"2018-10-03"),
    (34,6,"2018-29-10"),
    (21,17,"2019-22-05"),
    (18,14,"2019-20-04"),
    (32,18,"2019-28-04");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (22,18,"2019-25-06"),
    (38,20,"2019-05-06"),
    (46,6,"2019-14-01"),
    (16,8,"2019-03-01"),
    (9,12,"2019-19-02"),
    (22,8,"2019-23-04"),
    (10,9,"2017-14-11"),
    (29,10,"2018-28-10"),
    (7,18,"2018-09-11"),
    (13,11,"2018-27-05"),
    (9,9,"2018-13-08"),
    (34,6,"2018-17-01"),
    (15,18,"2019-27-03"),
    (16,15,"2018-25-05"),
    (22,15,"2019-03-08"),
    (17,11,"2017-19-10"),
    (34,15,"2019-15-01"),
    (39,11,"2019-31-08"),
    (26,13,"2019-21-04"),
    (43,15,"2017-15-11"),
    (48,9,"2017-03-11"),
    (6,9,"2019-01-03"),
    (9,15,"2018-18-07"),
    (40,8,"2019-03-05"),
    (13,12,"2018-20-12"),
    (47,8,"2018-08-01"),
    (5,19,"2019-04-04"),
    (7,12,"2018-24-05"),
    (11,12,"2019-08-08"),
    (9,15,"2019-02-05"),
    (31,8,"2017-16-10"),
    (44,7,"2019-14-07"),
    (10,15,"2018-10-06"),
    (45,8,"2019-14-05"),
    (7,19,"2018-10-11"),
    (49,20,"2018-24-03"),
    (20,9,"2018-20-11"),
    (28,7,"2019-01-01"),
    (4,9,"2019-20-05"),
    (38,6,"2018-29-01"),
    (13,13,"2019-23-06"),
    (31,12,"2018-09-06"),
    (10,8,"2019-26-05"),
    (10,12,"2019-14-04"),
    (35,18,"2019-29-08"),
    (38,12,"2018-22-06"),
    (6,6,"2018-14-06"),
    (9,19,"2018-25-09"),
    (35,18,"2018-25-11"),
    (23,18,"2019-23-07"),
    (49,8,"2017-01-12"),
    (39,11,"2019-05-05"),
    (35,13,"2018-03-02"),
    (45,15,"2018-03-05"),
    (29,6,"2018-05-04"),
    (12,13,"2019-08-04"),
    (16,16,"2019-26-02"),
    (23,14,"2019-11-03"),
    (6,11,"2019-24-08"),
    (10,20,"2019-24-04"),
    (39,20,"2018-31-03"),
    (3,7,"2017-03-11"),
    (49,11,"2018-30-03"),
    (12,19,"2017-30-12"),
    (22,14,"2019-27-08"),
    (8,13,"2018-07-12"),
    (45,7,"2018-15-06"),
    (35,9,"2019-26-01"),
    (50,6,"2018-07-04"),
    (17,8,"2018-28-12"),
    (27,10,"2018-16-10"),
    (19,9,"2018-25-03"),
    (13,8,"2019-15-09"),
    (43,16,"2018-03-03"),
    (36,9,"2018-30-09"),
    (8,15,"2018-30-03"),
    (28,18,"2017-07-10"),
    (40,14,"2018-06-01"),
    (28,9,"2018-29-01"),
    (8,9,"2018-26-01"),
    (47,9,"2018-29-10"),
    (19,12,"2018-23-04"),
    (16,18,"2018-21-06"),
    (9,20,"2017-07-09"),
    (25,17,"2019-07-02"),
    (5,16,"2019-26-01"),
    (12,18,"2019-05-03"),
    (15,8,"2017-04-12"),
    (8,12,"2019-10-02"),
    (17,20,"2019-24-05"),
    (3,9,"2018-24-09"),
    (31,9,"2018-23-08"),
    (11,12,"2019-12-09"),
    (12,12,"2019-14-04"),
    (23,18,"2017-21-09"),
    (45,13,"2018-30-12"),
    (33,16,"2018-20-04"),
    (35,12,"2017-26-10"),
    (12,6,"2018-09-04"),
    (50,13,"2018-27-06");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (46,8,"2018-21-02"),
    (2,15,"2018-28-07"),
    (30,14,"2017-18-09"),
    (10,7,"2017-21-12"),
    (25,19,"2019-14-03"),
    (22,7,"2019-08-03"),
    (38,15,"2018-10-10"),
    (46,19,"2019-16-06"),
    (3,8,"2019-20-07"),
    (13,20,"2019-25-03"),
    (50,6,"2018-17-07"),
    (21,19,"2019-27-05"),
    (36,8,"2019-24-01"),
    (44,6,"2019-16-08"),
    (19,16,"2019-28-06"),
    (41,19,"2019-28-06"),
    (31,7,"2019-13-02"),
    (21,16,"2018-24-02"),
    (50,16,"2019-16-01"),
    (20,6,"2017-26-11"),
    (31,9,"2018-17-04"),
    (13,9,"2018-28-05"),
    (2,12,"2017-17-10"),
    (42,11,"2019-18-06"),
    (48,10,"2019-29-04"),
    (11,16,"2017-13-10"),
    (43,7,"2018-20-05"),
    (32,17,"2017-08-11"),
    (10,12,"2018-27-09"),
    (8,17,"2018-07-03"),
    (38,13,"2018-03-12"),
    (34,16,"2018-05-10"),
    (7,15,"2018-12-06"),
    (20,9,"2018-06-10"),
    (3,11,"2018-18-05"),
    (6,9,"2019-29-03"),
    (5,17,"2018-02-05"),
    (30,11,"2017-30-10"),
    (21,19,"2018-06-07"),
    (7,13,"2019-23-04"),
    (39,20,"2019-21-01"),
    (10,11,"2019-14-08"),
    (44,12,"2018-23-05"),
    (15,7,"2019-17-01"),
    (4,18,"2019-13-06"),
    (38,10,"2019-09-06"),
    (32,8,"2018-03-03"),
    (28,12,"2017-11-10"),
    (24,13,"2018-01-03"),
    (12,14,"2018-03-03"),
    (4,11,"2018-18-03"),
    (27,8,"2019-11-07"),
    (26,12,"2018-29-06"),
    (49,14,"2019-20-06"),
    (2,9,"2019-12-04"),
    (4,12,"2019-17-05"),
    (47,16,"2019-19-01"),
    (4,20,"2019-12-04"),
    (17,9,"2017-08-11"),
    (4,12,"2017-25-10"),
    (45,15,"2019-17-01"),
    (4,9,"2017-28-11"),
    (22,19,"2019-09-08"),
    (36,13,"2019-20-05"),
    (47,16,"2018-07-05"),
    (20,11,"2018-15-11"),
    (43,20,"2019-24-06"),
    (30,17,"2018-25-05"),
    (40,13,"2018-24-06"),
    (10,7,"2019-30-05"),
    (26,20,"2019-16-05"),
    (45,14,"2018-27-09"),
    (36,17,"2018-05-02"),
    (8,20,"2018-18-02"),
    (39,19,"2019-20-03"),
    (19,20,"2018-15-01"),
    (33,14,"2018-18-02"),
    (34,16,"2017-15-12"),
    (15,8,"2018-03-12"),
    (34,19,"2019-26-03"),
    (21,19,"2017-27-11"),
    (4,11,"2018-04-06"),
    (33,12,"2017-06-10"),
    (36,12,"2019-13-04"),
    (28,20,"2018-22-12"),
    (50,17,"2019-03-08"),
    (39,15,"2019-23-05"),
    (29,12,"2019-09-05"),
    (14,7,"2018-26-11"),
    (13,14,"2018-01-11"),
    (47,16,"2018-23-08"),
    (34,14,"2019-08-09"),
    (43,8,"2017-15-10"),
    (32,11,"2018-26-11"),
    (50,20,"2019-16-07"),
    (13,19,"2019-04-04"),
    (28,10,"2017-17-12"),
    (25,13,"2019-29-06"),
    (13,16,"2017-09-10"),
    (32,14,"2019-19-08");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (12,20,"2018-26-03"),
    (37,11,"2018-16-04"),
    (24,13,"2019-21-07"),
    (6,11,"2019-11-03"),
    (8,18,"2017-15-09"),
    (31,13,"2018-02-12"),
    (2,18,"2017-15-11"),
    (21,10,"2017-03-11"),
    (1,7,"2018-29-05"),
    (30,13,"2018-04-01"),
    (2,17,"2019-06-02"),
    (5,8,"2017-13-09"),
    (45,14,"2019-30-04"),
    (32,11,"2018-21-09"),
    (22,18,"2018-12-10"),
    (45,6,"2018-07-10"),
    (41,6,"2019-27-06"),
    (42,14,"2018-30-05"),
    (15,8,"2018-29-11"),
    (10,15,"2018-30-01"),
    (17,11,"2019-25-06"),
    (10,9,"2018-17-12"),
    (26,14,"2019-01-07"),
    (1,13,"2019-05-03"),
    (27,11,"2018-16-05"),
    (25,16,"2017-23-12"),
    (5,14,"2018-01-05"),
    (12,16,"2018-17-07"),
    (17,19,"2019-21-08"),
    (34,8,"2018-04-12"),
    (13,16,"2018-11-09"),
    (6,8,"2018-10-12"),
    (25,12,"2019-22-02"),
    (11,15,"2018-19-02"),
    (26,17,"2018-23-05"),
    (30,9,"2019-27-02"),
    (41,18,"2018-16-07"),
    (40,16,"2019-18-04"),
    (45,14,"2017-18-10"),
    (5,19,"2019-05-09"),
    (9,19,"2019-27-08"),
    (30,17,"2018-17-06"),
    (42,14,"2019-09-02"),
    (50,18,"2018-16-12"),
    (45,19,"2018-14-02"),
    (47,14,"2018-23-07"),
    (3,11,"2019-31-08"),
    (8,11,"2019-17-03"),
    (25,18,"2019-03-02"),
    (6,11,"2018-25-02"),
    (25,15,"2017-19-11"),
    (31,10,"2018-05-12"),
    (3,14,"2019-07-04"),
    (9,9,"2018-24-06"),
    (40,17,"2018-30-11"),
    (35,19,"2018-13-10"),
    (17,15,"2017-30-11"),
    (7,13,"2019-17-04"),
    (6,15,"2017-08-12"),
    (1,14,"2019-22-06"),
    (22,10,"2019-10-09"),
    (30,15,"2018-09-03"),
    (45,7,"2019-25-02"),
    (26,13,"2019-29-01"),
    (29,6,"2018-11-11"),
    (4,11,"2018-27-01"),
    (13,6,"2018-09-12"),
    (24,14,"2017-04-11"),
    (45,14,"2018-10-09"),
    (31,8,"2019-14-04"),
    (40,13,"2018-19-03"),
    (38,16,"2018-26-02"),
    (8,13,"2017-12-09"),
    (13,12,"2017-28-10"),
    (49,10,"2018-01-02"),
    (34,20,"2018-11-04"),
    (5,18,"2018-22-10"),
    (26,6,"2017-12-12"),
    (49,8,"2019-06-06"),
    (48,17,"2018-03-06"),
    (19,6,"2018-14-07"),
    (1,18,"2019-15-05"),
    (24,17,"2019-05-02"),
    (8,15,"2019-15-07"),
    (11,17,"2019-13-08"),
    (20,14,"2018-10-01"),
    (12,19,"2018-16-08"),
    (16,13,"2017-17-12"),
    (34,10,"2018-17-11"),
    (40,16,"2018-19-05"),
    (19,17,"2018-15-03"),
    (22,19,"2019-18-07"),
    (16,16,"2018-19-11"),
    (10,7,"2018-27-07"),
    (7,9,"2018-30-11"),
    (50,9,"2019-04-09"),
    (29,20,"2019-06-04"),
    (17,20,"2018-28-10"),
    (27,16,"2018-27-08"),
    (11,11,"2017-07-12");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (4,12,"2018-01-10"),
    (37,7,"2018-07-04"),
    (10,20,"2018-02-06"),
    (9,11,"2018-22-02"),
    (21,7,"2017-23-10"),
    (23,18,"2019-11-04"),
    (31,16,"2018-28-04"),
    (2,11,"2018-05-07"),
    (20,7,"2019-23-08"),
    (4,14,"2019-12-08"),
    (27,9,"2018-28-04"),
    (23,11,"2019-31-08"),
    (50,14,"2018-17-06"),
    (41,7,"2017-21-10"),
    (38,8,"2018-12-05"),
    (41,16,"2019-09-02"),
    (18,14,"2018-01-10"),
    (25,6,"2019-24-01"),
    (10,19,"2017-12-12"),
    (12,15,"2019-27-06"),
    (39,12,"2018-07-11"),
    (50,15,"2018-13-12"),
    (32,17,"2018-08-12"),
    (36,18,"2018-20-08"),
    (48,13,"2019-02-07"),
    (20,8,"2018-18-07"),
    (36,6,"2018-14-08"),
    (46,9,"2019-19-04"),
    (43,18,"2018-29-03"),
    (20,16,"2019-27-02"),
    (14,11,"2019-06-06"),
    (47,20,"2019-30-03"),
    (48,8,"2019-15-09"),
    (15,16,"2018-03-10"),
    (32,10,"2019-25-08"),
    (17,11,"2018-01-02"),
    (1,14,"2017-07-12"),
    (20,13,"2019-06-06"),
    (7,13,"2018-15-05"),
    (23,15,"2019-30-01"),
    (12,6,"2018-22-11"),
    (13,16,"2018-06-06"),
    (47,17,"2018-20-08"),
    (18,7,"2019-06-03"),
    (10,20,"2017-25-12"),
    (43,13,"2018-15-10"),
    (23,9,"2018-26-04"),
    (5,18,"2018-01-05"),
    (8,16,"2019-05-03"),
    (39,12,"2018-04-02"),
    (2,13,"2018-21-11"),
    (14,10,"2018-13-01"),
    (48,10,"2019-08-08"),
    (50,20,"2017-16-11"),
    (4,10,"2019-01-06"),
    (44,8,"2018-29-06"),
    (12,16,"2019-03-05"),
    (25,15,"2018-07-12"),
    (40,6,"2019-07-01"),
    (18,15,"2019-24-05"),
    (26,12,"2019-04-08"),
    (36,14,"2018-28-06"),
    (15,18,"2018-09-05"),
    (31,17,"2018-09-05"),
    (27,17,"2018-26-12"),
    (40,13,"2018-07-06"),
    (1,18,"2018-15-08"),
    (38,15,"2019-27-01"),
    (7,9,"2018-09-04"),
    (46,16,"2018-18-11"),
    (4,20,"2018-12-12"),
    (19,18,"2019-14-01"),
    (41,14,"2018-12-12"),
    (10,16,"2019-12-09"),
    (5,12,"2018-18-06"),
    (30,6,"2018-19-09"),
    (39,14,"2019-18-01"),
    (1,18,"2018-21-12"),
    (34,20,"2018-17-05"),
    (5,14,"2018-31-07"),
    (39,20,"2018-16-05"),
    (19,19,"2018-07-10"),
    (3,11,"2018-10-09"),
    (18,14,"2019-07-07"),
    (21,11,"2019-15-06"),
    (24,10,"2019-17-08"),
    (19,19,"2018-08-09"),
    (15,15,"2018-21-05"),
    (5,6,"2017-14-10"),
    (2,17,"2018-25-11"),
    (11,13,"2019-26-01"),
    (30,8,"2019-15-05"),
    (8,11,"2018-30-08"),
    (13,11,"2018-12-05"),
    (14,15,"2018-28-11"),
    (26,12,"2019-15-02"),
    (18,18,"2019-11-09"),
    (29,14,"2017-26-11"),
    (8,20,"2017-16-11"),
    (11,16,"2018-22-04");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (33,11,"2018-07-11"),
    (27,10,"2018-14-02"),
    (43,16,"2019-02-08"),
    (36,15,"2018-13-09"),
    (2,8,"2019-18-08"),
    (39,6,"2018-15-04"),
    (5,8,"2017-03-11"),
    (39,15,"2019-29-08"),
    (11,10,"2018-04-04"),
    (9,13,"2018-05-10"),
    (20,20,"2017-17-11"),
    (27,7,"2018-08-04"),
    (4,12,"2018-22-06"),
    (46,9,"2019-20-05"),
    (4,18,"2019-11-07"),
    (33,20,"2019-21-07"),
    (17,15,"2019-28-04"),
    (29,13,"2019-24-01"),
    (47,9,"2018-06-01"),
    (19,7,"2018-02-03"),
    (18,18,"2019-06-03"),
    (39,11,"2017-26-11"),
    (48,14,"2018-10-12"),
    (47,9,"2018-26-04"),
    (17,6,"2017-18-10"),
    (46,8,"2019-25-02"),
    (27,8,"2019-24-01"),
    (4,10,"2017-19-09"),
    (36,18,"2019-16-09"),
    (1,8,"2017-24-11"),
    (41,14,"2018-23-08"),
    (36,9,"2017-31-10"),
    (46,6,"2018-22-05"),
    (35,13,"2018-09-07"),
    (48,14,"2019-05-05"),
    (36,10,"2017-29-10"),
    (12,20,"2018-11-03"),
    (42,15,"2018-10-02"),
    (20,17,"2018-04-02"),
    (48,19,"2018-08-10"),
    (7,11,"2018-01-03"),
    (16,18,"2019-11-03"),
    (36,10,"2018-26-04"),
    (13,7,"2018-31-12"),
    (24,8,"2018-22-09"),
    (14,19,"2019-15-07"),
    (8,14,"2018-07-10"),
    (19,11,"2018-10-03"),
    (35,12,"2019-27-01"),
    (16,15,"2018-03-04"),
    (41,16,"2018-27-04"),
    (28,16,"2019-11-06"),
    (25,14,"2019-21-07"),
    (9,19,"2019-15-03"),
    (31,11,"2017-02-12"),
    (32,6,"2017-12-09"),
    (45,14,"2019-23-04"),
    (17,7,"2017-04-11"),
    (5,16,"2018-07-12"),
    (35,14,"2018-03-06"),
    (44,16,"2019-25-04"),
    (16,19,"2019-11-06"),
    (33,12,"2018-22-01"),
    (50,20,"2017-15-12"),
    (8,13,"2017-18-09"),
    (14,9,"2019-09-07"),
    (33,18,"2019-20-05"),
    (26,8,"2017-22-11"),
    (34,11,"2018-01-04"),
    (49,6,"2018-16-06"),
    (16,10,"2018-29-11"),
    (2,10,"2018-16-11"),
    (17,17,"2017-29-10"),
    (30,19,"2018-13-04"),
    (33,17,"2019-01-05"),
    (32,10,"2019-20-07"),
    (36,13,"2019-28-05"),
    (40,17,"2018-18-10"),
    (33,9,"2019-14-03"),
    (48,20,"2019-26-05"),
    (34,20,"2017-28-09"),
    (15,15,"2018-06-05"),
    (8,15,"2019-18-01"),
    (1,18,"2017-07-10"),
    (33,8,"2017-14-09"),
    (6,15,"2019-19-04"),
    (30,17,"2018-08-09"),
    (32,16,"2018-08-05"),
    (27,20,"2019-03-03"),
    (5,15,"2019-11-04"),
    (47,7,"2019-06-07"),
    (46,13,"2018-20-05"),
    (27,15,"2019-26-08"),
    (42,16,"2017-17-09"),
    (19,13,"2019-12-09"),
    (24,14,"2017-17-12"),
    (13,7,"2019-23-02"),
    (14,16,"2018-10-04"),
    (38,15,"2017-06-12"),
    (31,12,"2018-07-03");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (50,9,"2018-20-06"),
    (13,12,"2018-15-11"),
    (49,7,"2019-03-09"),
    (34,17,"2019-04-01"),
    (36,6,"2019-17-04"),
    (27,14,"2018-24-10"),
    (34,15,"2019-04-02"),
    (13,20,"2017-03-11"),
    (22,16,"2018-14-11"),
    (10,7,"2018-03-03"),
    (41,9,"2018-02-06"),
    (39,6,"2018-12-05"),
    (36,6,"2017-08-11"),
    (49,16,"2019-03-08"),
    (38,20,"2018-11-06"),
    (10,9,"2019-06-02"),
    (30,14,"2019-21-05"),
    (7,10,"2018-16-08"),
    (41,8,"2017-22-11"),
    (1,10,"2019-16-08"),
    (33,13,"2018-05-08"),
    (49,8,"2018-27-04"),
    (29,13,"2017-17-09"),
    (7,9,"2018-28-08"),
    (20,20,"2017-24-11"),
    (20,13,"2017-09-11"),
    (23,18,"2018-11-10"),
    (32,17,"2018-27-11"),
    (7,9,"2017-16-10"),
    (8,12,"2018-08-10"),
    (7,17,"2017-26-11"),
    (28,7,"2019-22-08"),
    (32,7,"2017-25-09"),
    (40,20,"2019-23-07"),
    (30,10,"2019-25-04"),
    (31,7,"2018-26-11"),
    (25,10,"2018-14-06"),
    (28,12,"2017-09-09"),
    (27,20,"2017-17-12"),
    (3,16,"2019-07-06"),
    (2,12,"2018-02-10"),
    (21,7,"2018-08-11"),
    (23,12,"2018-09-06"),
    (36,17,"2018-18-04"),
    (17,11,"2017-08-09"),
    (13,7,"2018-06-03"),
    (25,17,"2018-16-04"),
    (33,19,"2018-22-02"),
    (30,7,"2017-12-10"),
    (44,12,"2019-21-04"),
    (40,10,"2019-03-01"),
    (15,7,"2018-21-11"),
    (44,11,"2018-11-05"),
    (45,11,"2017-18-10"),
    (18,16,"2019-10-04"),
    (10,8,"2018-02-02"),
    (7,14,"2018-30-09"),
    (4,8,"2017-23-10"),
    (29,13,"2019-31-03"),
    (50,10,"2018-23-03"),
    (6,11,"2018-13-08"),
    (34,7,"2019-26-08"),
    (32,11,"2018-01-02"),
    (36,19,"2018-04-03"),
    (50,11,"2017-28-12"),
    (11,20,"2018-08-01"),
    (6,17,"2018-25-11"),
    (18,16,"2017-08-09"),
    (13,12,"2018-27-01"),
    (6,19,"2017-09-09"),
    (10,9,"2018-12-02"),
    (3,12,"2019-07-08"),
    (39,14,"2018-14-01"),
    (45,14,"2019-07-06"),
    (15,18,"2018-09-01"),
    (39,20,"2019-10-06"),
    (15,16,"2018-13-03"),
    (35,9,"2017-07-09"),
    (21,19,"2017-19-09"),
    (9,9,"2018-07-04"),
    (40,15,"2018-16-05"),
    (13,20,"2018-05-02"),
    (13,12,"2019-29-03"),
    (9,12,"2018-23-09"),
    (48,14,"2019-14-07"),
    (35,20,"2019-05-09"),
    (31,15,"2018-23-07"),
    (28,6,"2018-01-09"),
    (37,11,"2018-10-05"),
    (41,10,"2018-10-07"),
    (13,7,"2018-11-07"),
    (4,11,"2018-06-07"),
    (27,17,"2018-28-01"),
    (44,8,"2017-15-12"),
    (12,15,"2017-04-10"),
    (35,19,"2018-07-06"),
    (9,7,"2018-24-09"),
    (46,7,"2017-03-12"),
    (34,9,"2017-17-09"),
    (25,9,"2018-26-02");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (1,16,"2018-28-10"),
    (41,15,"2018-31-08"),
    (38,14,"2018-02-02"),
    (20,16,"2018-07-12"),
    (3,8,"2019-03-03"),
    (15,7,"2018-09-12"),
    (45,18,"2019-24-07"),
    (11,13,"2019-30-03"),
    (27,17,"2017-01-10"),
    (32,6,"2019-23-01"),
    (15,7,"2018-27-12"),
    (39,15,"2018-26-07"),
    (6,15,"2018-31-01"),
    (5,10,"2017-22-10"),
    (5,10,"2018-07-01"),
    (43,14,"2017-12-09"),
    (37,18,"2018-04-10"),
    (32,15,"2018-27-10"),
    (37,12,"2018-09-10"),
    (19,8,"2018-05-09"),
    (19,14,"2018-12-07"),
    (50,6,"2017-14-10"),
    (40,11,"2018-15-07"),
    (41,19,"2018-07-03"),
    (49,12,"2019-25-04"),
    (13,19,"2018-11-03"),
    (2,9,"2018-19-12"),
    (8,6,"2019-17-02"),
    (16,12,"2017-09-10"),
    (9,19,"2018-14-06"),
    (27,10,"2019-03-05"),
    (36,14,"2017-11-12"),
    (20,17,"2019-06-09"),
    (11,8,"2017-30-11"),
    (46,10,"2017-26-10"),
    (40,19,"2017-07-12"),
    (18,7,"2019-21-06"),
    (37,8,"2018-12-10"),
    (14,12,"2017-18-12"),
    (24,18,"2019-08-03"),
    (25,9,"2018-30-09"),
    (4,20,"2018-14-08"),
    (24,8,"2018-29-11"),
    (27,18,"2018-11-05"),
    (45,10,"2018-03-03"),
    (20,7,"2019-16-03"),
    (48,10,"2018-03-04"),
    (46,12,"2019-10-02"),
    (35,12,"2018-22-05"),
    (12,14,"2017-11-12"),
    (19,16,"2017-19-10"),
    (25,12,"2019-16-03"),
    (13,8,"2019-31-01"),
    (33,8,"2018-17-06"),
    (38,9,"2018-05-02"),
    (46,16,"2019-22-06"),
    (7,12,"2018-15-03"),
    (49,8,"2018-21-12"),
    (15,18,"2018-30-08"),
    (11,8,"2017-05-11"),
    (37,20,"2019-10-01"),
    (22,19,"2018-01-01"),
    (47,11,"2018-31-05"),
    (37,20,"2017-25-12"),
    (10,10,"2019-09-01"),
    (43,7,"2018-28-04"),
    (15,20,"2018-13-01"),
    (44,9,"2018-19-05"),
    (10,6,"2018-27-09"),
    (26,11,"2018-27-06"),
    (34,12,"2017-01-10"),
    (47,19,"2018-29-12"),
    (10,15,"2018-26-03"),
    (5,10,"2018-17-10"),
    (35,17,"2018-04-03"),
    (16,7,"2018-27-09"),
    (14,9,"2017-02-10"),
    (6,10,"2017-08-11"),
    (21,14,"2019-27-01"),
    (34,9,"2018-07-05"),
    (18,18,"2019-10-05"),
    (46,13,"2018-18-08"),
    (34,9,"2018-08-06"),
    (47,19,"2019-23-01"),
    (45,17,"2018-12-11"),
    (4,8,"2017-18-12"),
    (20,18,"2019-16-07"),
    (12,19,"2018-27-05"),
    (17,15,"2019-02-02"),
    (39,11,"2018-09-04"),
    (39,18,"2019-05-01"),
    (29,18,"2017-05-10"),
    (48,20,"2018-19-10"),
    (35,14,"2019-11-02"),
    (30,12,"2019-01-02"),
    (33,6,"2018-28-08"),
    (26,16,"2018-02-12"),
    (11,20,"2018-30-01"),
    (28,13,"2017-21-12"),
    (5,10,"2017-10-10");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (42,17,"2019-25-06"),
    (20,9,"2019-27-03"),
    (14,13,"2019-01-05"),
    (8,18,"2018-17-05"),
    (14,15,"2018-30-09"),
    (21,13,"2019-06-06"),
    (4,19,"2018-15-10"),
    (6,18,"2018-01-04"),
    (28,11,"2018-30-06"),
    (2,9,"2018-19-10"),
    (24,11,"2019-01-01"),
    (27,15,"2019-13-06"),
    (3,8,"2018-27-11"),
    (38,19,"2017-31-12"),
    (41,12,"2019-26-07"),
    (25,11,"2018-12-05"),
    (23,8,"2018-21-01"),
    (16,8,"2019-09-06"),
    (28,20,"2019-02-04"),
    (1,9,"2019-27-02"),
    (39,16,"2018-12-12"),
    (7,16,"2019-01-02"),
    (18,12,"2019-15-06"),
    (31,10,"2018-01-08"),
    (37,16,"2018-08-12"),
    (5,20,"2018-27-03"),
    (28,8,"2019-23-07"),
    (14,6,"2019-13-05"),
    (27,9,"2018-14-02"),
    (18,14,"2018-01-10"),
    (43,15,"2018-27-11"),
    (10,14,"2018-27-10"),
    (46,11,"2019-29-01"),
    (20,16,"2018-26-09"),
    (42,10,"2017-01-12"),
    (12,12,"2018-29-09"),
    (29,11,"2018-10-05"),
    (4,9,"2019-17-08"),
    (29,15,"2019-21-02"),
    (39,7,"2018-03-01"),
    (42,7,"2018-12-08"),
    (40,17,"2018-12-08"),
    (41,18,"2019-24-03"),
    (12,15,"2019-03-03"),
    (9,17,"2017-17-09"),
    (21,13,"2018-15-07"),
    (39,6,"2019-31-08"),
    (3,10,"2018-28-04"),
    (33,20,"2019-11-06"),
    (38,12,"2019-10-09"),
    (1,7,"2018-21-03"),
    (46,17,"2018-13-08"),
    (46,13,"2017-15-12"),
    (48,7,"2018-11-02"),
    (9,8,"2019-01-09"),
    (13,15,"2019-01-03"),
    (8,18,"2017-12-12"),
    (18,12,"2018-26-07"),
    (28,9,"2019-08-01"),
    (33,16,"2019-09-09"),
    (19,13,"2017-25-11"),
    (28,10,"2018-10-12"),
    (18,20,"2018-01-10"),
    (9,8,"2017-22-09"),
    (49,17,"2018-06-10"),
    (21,10,"2019-23-01"),
    (26,9,"2018-21-06"),
    (39,13,"2019-19-06"),
    (3,13,"2019-04-02"),
    (18,8,"2019-09-07"),
    (49,19,"2018-16-09"),
    (3,17,"2019-16-01"),
    (11,14,"2019-05-06"),
    (13,13,"2018-09-05"),
    (49,6,"2019-18-07"),
    (42,14,"2017-05-10"),
    (21,12,"2018-01-12"),
    (34,6,"2019-26-01"),
    (32,16,"2019-12-08"),
    (9,15,"2018-23-02"),
    (3,20,"2018-03-08"),
    (15,18,"2019-16-03"),
    (38,8,"2017-29-12"),
    (12,8,"2017-14-10"),
    (32,8,"2019-28-06"),
    (4,13,"2018-08-06"),
    (42,20,"2018-13-10"),
    (48,7,"2018-28-06"),
    (8,10,"2017-04-12"),
    (27,18,"2019-11-02"),
    (14,11,"2017-27-09"),
    (9,7,"2017-14-10"),
    (13,9,"2018-30-09"),
    (26,10,"2019-26-07"),
    (40,14,"2019-19-02"),
    (17,12,"2018-23-11"),
    (21,14,"2019-29-08"),
    (3,8,"2018-22-06"),
    (6,15,"2017-13-09"),
    (19,9,"2019-04-08");

INSERT INTO `purchase` (`product_id`,`buyer_id`,`purchase_date`) VALUES
    (13,14,"2018-12-12"),
    (9,14,"2017-15-09"),
    (4,18,"2018-01-09"),
    (45,20,"2017-17-12"),
    (28,14,"2018-13-09"),
    (36,11,"2018-29-07"),
    (44,19,"2018-14-06"),
    (47,7,"2019-15-03"),
    (40,14,"2018-29-12"),
    (10,10,"2018-24-10"),
    (15,11,"2018-06-04"),
    (45,9,"2018-28-08"),
    (47,20,"2018-28-09"),
    (18,9,"2019-07-08"),
    (25,15,"2019-30-04"),
    (45,8,"2018-04-12"),
    (29,11,"2017-15-09"),
    (10,19,"2018-18-01"),
    (16,14,"2017-08-11"),
    (22,12,"2019-25-02"),
    (32,7,"2018-07-06"),
    (41,15,"2018-14-07"),
    (14,17,"2019-04-07"),
    (42,16,"2018-29-03"),
    (14,18,"2017-08-09"),
    (33,16,"2019-20-04"),
    (43,17,"2017-27-10"),
    (32,15,"2018-26-07"),
    (36,19,"2019-21-08"),
    (38,17,"2017-25-09"),
    (34,13,"2018-09-09"),
    (11,6,"2018-24-02"),
    (35,8,"2018-01-02"),
    (47,9,"2018-21-03"),
    (43,10,"2018-17-06"),
    (47,12,"2019-01-07"),
    (30,11,"2019-27-04"),
    (9,6,"2019-13-01"),
    (19,14,"2018-01-10"),
    (22,15,"2018-14-07"),
    (30,6,"2017-23-11"),
    (37,14,"2018-18-04"),
    (28,11,"2019-25-03"),
    (21,15,"2018-25-11"),
    (28,10,"2018-28-03"),
    (26,20,"2019-30-01"),
    (44,8,"2019-20-06"),
    (40,19,"2017-24-12"),
    (32,7,"2018-19-06"),
    (49,9,"2019-09-06"),
    (33,17,"2019-09-09"),
    (7,15,"2017-26-09"),
    (15,6,"2017-14-12"),
    (2,18,"2019-18-04"),
    (26,18,"2019-06-04"),
    (40,19,"2019-07-01"),
    (38,17,"2018-03-09"),
    (4,6,"2018-07-12"),
    (5,10,"2019-12-06"),
    (22,11,"2018-26-03"),
    (42,13,"2019-16-04"),
    (5,10,"2019-12-01"),
    (5,20,"2017-09-11"),
    (50,13,"2017-20-12"),
    (30,16,"2019-17-04"),
    (26,18,"2017-12-12"),
    (7,8,"2018-26-08"),
    (47,15,"2019-18-01"),
    (30,7,"2017-24-12"),
    (17,16,"2018-26-11"),
    (41,19,"2017-16-09"),
    (42,16,"2018-30-03"),
    (38,17,"2018-10-12"),
    (25,10,"2018-04-11"),
    (36,10,"2018-22-12"),
    (8,12,"2017-26-11"),
    (13,18,"2018-28-01"),
    (48,9,"2018-15-02"),
    (46,9,"2018-16-05"),
    (44,10,"2019-03-04"),
    (36,7,"2018-13-07"),
    (44,13,"2018-02-06"),
    (31,12,"2019-04-04"),
    (13,17,"2018-03-09"),
    (22,12,"2018-24-05"),
    (47,13,"2019-27-03"),
    (20,7,"2017-13-12"),
    (2,15,"2019-02-02"),
    (45,10,"2018-02-04"),
    (2,17,"2018-06-06"),
    (28,17,"2018-27-03"),
    (43,7,"2019-09-08"),
    (8,12,"2019-01-07"),
    (9,19,"2018-08-11"),
    (33,19,"2018-10-10"),
    (45,14,"2018-06-08"),
    (1,19,"2019-02-06"),
    (44,19,"2019-18-01"),
    (27,15,"2019-27-01"),
    (21,11,"2017-19-11");
