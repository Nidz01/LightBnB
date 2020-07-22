
INSERT INTO users VALUES (1, 'Nida', 'nida@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users VALUES (2, 'Rida', 'rida@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users VALUES (3, 'Huda', 'huda@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users VALUES (4, 'Fida', 'fida@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users VALUES (5, 'Mina', 'mina@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties VALUES (1000, 1, 'Amber','description for first property', 'https://images.pexels.com/photos/3499176/pexels-photo-3499176.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/3499176/pexels-photo-3499176.jpeg', 930, 2, 1, 3, 'Canada', '999 property 1', 'Halifax', 'Nova Scotia', 'B3J3X7', 'true');
INSERT INTO properties VALUES (1001, 2, 'Blue', 'description for second property', 'https://images.pexels.com/photos/4208110/pexels-photo-4208110.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','https://images.pexels.com/photos/4208110/pexels-photo-4208110.jpeg', 850, 1, 1, 2, 'Canada', '888 property 2', 'Calgary', 'Alberta', '2TB0E1', 'true');
INSERT INTO properties VALUES (1002, 3, 'Caramel', 'description for third property', 'https://images.pexels.com/photos/3363341/pexels-photo-3363341.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','https://images.pexels.com/photos/3363341/pexels-photo-3363341.jpeg', 895, 1, 2, 2,'Canada','777 property 3', 'Montreal', 'Quebec', 'H2S1Z2', 'true');
INSERT INTO properties VALUES (1003, 4, 'Denim','description for third property', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg',950, 3, 2, 4, 'Canada','666 property 4', 'Toronto', 'Ontario', 'M4J5Z4' , 'true');
INSERT INTO properties VALUES (1004, 5, 'Espresso','description for fourth property', 'https://images.pexels.com/photos/1040893/pexels-photo-1040893.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','https://images.pexels.com/photos/1040893/pexels-photo-1040893.jpeg',989, 4, 3, 5, 'Canada', 'property 5', 'Moncton', 'New Brunswick', 'E1C1A9' , 'true');

INSERT INTO reservations VALUES (1, '2020-01-10', '2020-01-20',1004, 5);
INSERT INTO reservations VALUES (2, '2020-02-10', '2020-02-20',1003, 4);
INSERT INTO reservations VALUES (3, '2020-03-10', '2020-03-20',1002, 3);
INSERT INTO reservations VALUES (4, '2020-04-10', '2020-04-20',1001, 2);
INSERT INTO reservations VALUES (5, '2020-05-10', '2020-05-20',1000, 1);

INSERT INTO property_reviews VALUES (1, 5, 1004, 5, 3, 'message1');
INSERT INTO property_reviews VALUES (2, 4, 1003,4, 4,'message2');
INSERT INTO property_reviews VALUES (3, 3, 1002,3, 3, 'message3');
INSERT INTO property_reviews VALUES (4, 2, 1001, 2, 5, 'message4');
INSERT INTO property_reviews VALUES (5, 1, 1000, 3, 4, 'message5');