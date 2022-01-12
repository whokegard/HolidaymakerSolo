--
-- File generated with SQLiteStudio v3.3.3 on ons jan 12 19:57:40 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: additional_choices
CREATE TABLE additional_choices (choice_id INTEGER PRIMARY KEY NOT NULL, room_id INT (10) NOT NULL REFERENCES rooms (id) ON DELETE NO ACTION ON UPDATE NO ACTION, booked_dates_id INT (10) NOT NULL REFERENCES booked_dates (booked_ID) ON DELETE NO ACTION ON UPDATE NO ACTION, meal_choice VARCHAR (50), additional_bed VARCHAR (50));
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (1, 47, 1, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (2, 22, 2, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (3, 46, 3, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (4, 37, 5, 'Half board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (5, 45, 6, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (6, 44, 7, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (7, 41, 8, 'Half board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (8, 43, 9, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (9, 34, 10, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (10, 30, 11, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (11, 11, 12, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (12, 7, 13, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (13, 3, 14, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (14, 12, 15, 'Full board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (15, 37, 16, 'Full board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (16, 40, 17, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (17, 47, 18, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (18, 32, 19, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (19, 18, 20, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (20, 36, 21, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (21, 10, 22, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (22, 17, 23, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (23, 16, 24, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (24, 15, 25, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (25, 17, 26, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (26, 27, 27, 'Half board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (27, 36, 28, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (28, 20, 29, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (29, 28, 30, 'Half board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (30, 21, 31, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (31, 20, 32, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (32, 22, 33, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (33, 44, 35, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (34, 46, 37, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (35, 30, 39, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (36, 25, 42, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (37, 38, 43, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (38, 40, 44, 'None', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (39, 11, 45, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (40, 25, 46, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (41, 11, 47, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (42, 12, 48, 'Half board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (43, 42, 49, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (44, 39, 50, 'Full board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (45, 35, 51, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (46, 31, 52, 'Full board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (47, 38, 53, 'Full board', 'Yes');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (48, 41, 54, 'Full board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (49, 41, 55, 'Half board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (50, 23, 56, 'Full board', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (51, 46, 57, 'None', 'No');
INSERT INTO additional_choices (choice_id, room_id, booked_dates_id, meal_choice, additional_bed) VALUES (52, 37, 58, 'Full board', 'No');

-- Table: additional_prices
CREATE TABLE additional_prices (id INTEGER PRIMARY KEY NOT NULL, destination_id INT (10) REFERENCES destinations (id) ON DELETE NO ACTION ON UPDATE NO ACTION, half_board INT (10), full_board INT (10), additional_bed INT (10));
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (1, 1, 50, 100, 20);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (2, 2, 500, 800, 400);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (3, 3, 800, 1000, 500);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (4, 4, 400, 600, 300);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (5, 5, 1000, 1500, 800);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (6, 6, 1000, 2000, 800);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (7, 7, 100, 150, 50);
INSERT INTO additional_prices (id, destination_id, half_board, full_board, additional_bed) VALUES (8, 8, 450, 900, 200);

-- Table: booked_dates
CREATE TABLE booked_dates (booked_id INTEGER PRIMARY KEY NOT NULL, room_id INT (10) NOT NULL REFERENCES rooms (id) ON DELETE NO ACTION ON UPDATE NO ACTION, checkin_date DATE, checkout_date DATE);
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (1, 47, '2022-06-04', '2022-06-07');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (2, 22, '2022-06-02', '2022-06-05');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (3, 46, '2022-06-02', '2022-06-08');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (5, 37, '2022-06-07', '2022-06-09');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (6, 45, '2022-07-15', '2022-07-20');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (7, 44, '2022-07-01', '2022-07-06');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (8, 41, '2022-06-20', '2022-06-28');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (9, 43, '2022-07-10', '2022-07-20');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (10, 34, '2022-06-10', '2022-06-12');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (11, 30, '2022-06-08', '2022-06-12');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (12, 11, '2022-07-29', '2022-07-30');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (13, 7, '2022-07-01', '2022-07-15');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (14, 3, '2022-07-05', '2022-07-09');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (15, 12, '2022-06-20', '2022-06-23');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (16, 37, '2022-07-19', '2022-07-29');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (17, 40, '2022-06-23', '2022-06-24');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (18, 47, '2022-06-26', '2022-07-15');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (19, 32, '2022-06-17', '2022-06-30');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (20, 18, '2022-07-02', '2022-07-06');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (21, 36, '2022-07-26', '2022-07-30');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (22, 10, '2022-06-23', '2022-06-28');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (23, 17, '2022-06-13', '2022-06-19');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (24, 16, '2022-07-13', '2022-07-15');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (25, 15, '2022-06-23', '2022-06-25');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (26, 17, '2022-07-06', '2022-07-08');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (27, 27, '2022-06-23', '2022-06-28');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (28, 36, '2022-06-11', '2022-06-15');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (29, 20, '2022-07-16', '2022-07-18');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (30, 28, '2022-07-09', '2022-07-29');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (31, 21, '2022-07-01', '2022-07-30');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (32, 20, '2022-06-03', '2022-06-09');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (33, 22, '2022-06-22', '2022-06-24');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (35, 44, '2022-06-01', '2022-06-02');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (36, 1, '2022-01-06', '2022-01-10');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (37, 46, '2022-06-01', '2022-06-02');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (38, 46, '2022-07-01', '2022-07-02');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (39, 30, '2022-06-06', '2022-06-30');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (40, 11, '2022-07-07', '2022-07-11');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (41, 20, '2022-07-07', '2022-07-15');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (42, 25, '2022-06-13', '2022-06-15');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (43, 38, '2022-07-01', '2022-07-10');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (45, 11, '2022-06-20', '2022-06-21');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (46, 25, '2022-06-11', '2022-06-12');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (47, 11, '2022-07-07', '2022-07-08');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (48, 12, '2022-06-06', '2022-06-07');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (49, 42, '2022-07-02', '2022-07-03');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (50, 39, '2022-06-02', '2022-06-03');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (51, 35, '2022-07-01', '2022-07-03');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (52, 31, '2022-06-02', '2022-06-03');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (53, 38, '2022-07-20', '2022-07-21');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (54, 41, '2022-07-15', '2022-07-16');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (55, 41, '2022-06-20', '2022-06-21');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (56, 23, '2022-06-13', '2022-06-14');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (57, 46, '2022-07-01', '2022-07-08');
INSERT INTO booked_dates (booked_id, room_id, checkin_date, checkout_date) VALUES (58, 37, '2022-06-01', '2022-06-07');

-- Table: destinations
CREATE TABLE destinations (id INTEGER PRIMARY KEY NOT NULL, city VARCHAR (255) NOT NULL, hotel_name VARCHAR (255) NOT NULL, restaurant INT (1), kids_club INT (1), pool INT (1), entertainment INT (1), rating INT (1), distance_centre INT (10), distance_beach INT (10), number_of_rooms INT (10));
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (1, 'Göteborg', 'Dorsia', 1, 0, 1, 0, 3, 300, 50, 7);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (2, 'Lysekil', 'Hotell Lysekil', 1, 1, 1, 0, 2, 25, 200, 5);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (3, 'Stockholm', 'Grand Hôtel', 1, 1, 0, 0, 2, 1000, 780, 6);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (4, 'Göteborg', 'Hotel Liseberg Heden', 1, 0, 1, 1, 1, 30, 500, 4);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (5, 'Göteborg', 'Avalon', 1, 1, 0, 1, 4, 10, 400, 10);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (6, 'Stockholm', 'Greta''s Inn', 1, 1, 1, 1, 5, 100, 20, 5);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (7, 'Göteborg', 'Gothia Towers', 1, 0, 0, 1, 1, 25, 800, 4);
INSERT INTO destinations (id, city, hotel_name, restaurant, kids_club, pool, entertainment, rating, distance_centre, distance_beach, number_of_rooms) VALUES (8, 'Stockholm', 'Radisson Blu Royal Viking', 1, 1, 0, 1, 4, 1, 30, 6);

-- Table: guest_bookings
CREATE TABLE guest_bookings (id INTEGER PRIMARY KEY NOT NULL, guests_id INT (10) NOT NULL REFERENCES guest_information (id) ON DELETE NO ACTION ON UPDATE NO ACTION, room_id INT (10) NOT NULL REFERENCES rooms (id) ON DELETE NO ACTION ON UPDATE NO ACTION, additional_choices_id INT (10) NOT NULL REFERENCES additional_choices (choice_ID) ON DELETE NO ACTION ON UPDATE NO ACTION, booked_dates_id INT (10) NOT NULL REFERENCES booked_dates (booked_ID) ON DELETE NO ACTION ON UPDATE NO ACTION, total_guests INT (10) NOT NULL);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (1, 3, 47, 1, 1, 3);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (2, 12, 22, 2, 2, 6);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (3, 13, 46, 3, 3, 8);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (4, 14, 37, 4, 5, 5);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (5, 15, 45, 5, 6, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (6, 16, 44, 6, 7, 8);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (7, 17, 41, 7, 8, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (8, 18, 43, 8, 9, 6);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (9, 19, 34, 9, 10, 9);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (10, 20, 30, 10, 11, 4);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (11, 21, 11, 11, 12, 5);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (12, 22, 7, 12, 13, 4);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (13, 23, 3, 13, 14, 3);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (14, 6, 12, 14, 15, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (16, 25, 40, 16, 17, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (17, 26, 47, 17, 18, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (18, 27, 32, 18, 19, 5);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (19, 28, 18, 19, 20, 4);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (20, 29, 36, 20, 21, 9);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (21, 30, 10, 21, 22, 4);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (22, 31, 17, 22, 23, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (23, 32, 16, 23, 24, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (24, 33, 15, 24, 25, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (25, 34, 17, 25, 26, 3);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (26, 10, 27, 26, 27, 7);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (27, 35, 36, 27, 28, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (28, 36, 20, 28, 29, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (29, 37, 28, 29, 30, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (30, 38, 21, 30, 31, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (31, 39, 20, 31, 32, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (32, 40, 22, 32, 33, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (33, 41, 44, 33, 35, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (34, 88, 3, 13, 14, 3);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (35, 101, 30, 35, 39, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (37, 100, 11, 39, 45, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (38, 101, 25, 40, 46, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (39, 102, 25, 40, 46, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (40, 90, 11, 41, 47, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (41, 77, 12, 42, 48, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (42, 92, 42, 43, 49, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (43, 77, 39, 44, 50, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (44, 20, 35, 45, 51, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (45, 105, 31, 46, 52, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (46, 104, 31, 46, 52, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (47, 109, 41, 49, 55, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (48, 110, 41, 49, 55, 2);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (49, 111, 23, 50, 56, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (50, 104, 46, 51, 57, 1);
INSERT INTO guest_bookings (id, guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (51, 112, 37, 52, 58, 1);

-- Table: guest_information
CREATE TABLE guest_information (id INTEGER PRIMARY KEY NOT NULL, first_name VARCHAR (255) NOT NULL, last_name VARCHAR (255) NOT NULL, email VARCHAR (255), phonenumber VARCHAR (255), birthdate VARCHAR (255) NOT NULL);
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (1, 'Reynold', 'Folke', 'rfolke0@utexas.edu', '554-367-0844', '1976-07-28');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (2, 'Keary', 'Blakeman', 'kblakeman1@dmoz.org', '531-672-8059', '1955-07-05');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (3, 'Putnem', 'Tosh', 'ptosh2@facebook.com', '807-128-3150', '1951-02-18');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (4, 'Ximenez', 'Utton', 'xutton3@gizmodo.com', '784-468-2366', '1966-05-27');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (5, 'Lelia', 'Pund', 'lpund4@ebay.com', '964-323-3567', '1998-09-10');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (6, 'Talya', 'Firbanks', 'tfirbanks5@wikia.com', '107-257-9685', '1946-04-27');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (7, 'Benjamen', 'Czajka', 'bczajka6@vk.com', '760-985-2653', '1965-10-23');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (8, 'Bartolomeo', 'Bann', 'bbann7@google.com', '279-330-4592', '1947-01-30');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (9, 'Royal', 'Taborre', 'rtaborre8@theatlantic.com', '119-488-7010', '1969-04-15');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (10, 'Noella', 'Ruxton', 'nruxton9@newyorker.com', '126-808-7934', '2003-08-09');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (11, 'Gal', 'Plows', 'gplowsa@trellian.com', '406-725-9290', '1973-07-09');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (12, 'Letizia', 'Jerzak', 'ljerzakb@angelfire.com', '879-111-9352', '1976-04-11');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (13, 'Cherianne', 'Guard', 'cguardc@icq.com', '372-699-7382', '1972-04-11');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (14, 'Dorelia', 'Fowkes', 'dfowkesd@photobucket.com', '615-855-2184', '1972-11-20');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (15, 'Cass', 'Doulton', 'cdoultone@hud.gov', '737-444-2636', '1966-12-18');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (16, 'Kathleen', 'Westney', 'kwestneyf@macromedia.com', '538-914-5586', '2005-03-20');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (17, 'Giacobo', 'Wilprecht', 'gwilprechtg@wix.com', '246-655-9492', '1957-07-19');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (18, 'Olav', 'Aleso', 'oalesoh@howstuffworks.com', '591-472-8481', '1983-03-04');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (19, 'Aristotle', 'Cartmill', 'acartmilli@msu.edu', '405-948-5512', '2001-09-08');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (20, 'Miranda', 'Town', 'mtownj@ca.gov', '349-581-9623', '1989-01-17');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (21, 'Marcy', 'Coote', 'mcootek@opensource.org', '848-588-3969', '1951-09-29');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (22, 'Wolf', 'Huntly', 'whuntlyl@youtube.com', '566-883-0783', '1972-10-10');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (23, 'Ike', 'MacClure', 'imacclurem@narod.ru', '495-387-5284', '1952-05-19');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (24, 'Britni', 'Bemment', 'bbemmentn@smugmug.com', '643-597-9413', '1973-06-29');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (25, 'Davie', 'Embling', 'demblingo@accuweather.com', '981-488-2266', '1975-12-18');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (26, 'Krissie', 'Diament', 'kdiamentp@booking.com', '926-230-0006', '1993-08-14');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (27, 'Leonard', 'McPolin', 'lmcpolinq@economist.com', '495-756-3088', '1994-12-17');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (28, 'Andrea', 'Fretwell', 'afretwellr@washington.edu', '878-744-0876', '1986-12-04');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (29, 'Cristine', 'Leidl', 'cleidls@abc.net.au', '998-317-7855', '2003-10-18');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (30, 'Omar', 'Steen', 'osteent@mozilla.org', '300-333-0459', '1972-06-26');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (31, 'Bendicty', 'Bagger', 'bbaggeru@networksolutions.com', '999-963-4025', '1993-12-07');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (32, 'Phaidra', 'Verey', 'pvereyv@yellowbook.com', '629-424-2361', '1998-01-26');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (33, 'Hillier', 'Saph', 'hsaphw@quantcast.com', '338-149-8943', '1961-11-30');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (34, 'Ericka', 'Pexton', 'epextonx@shareasale.com', '599-545-5421', '1956-11-08');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (35, 'Hasty', 'Urwen', 'hurweny@shinystat.com', '695-481-8293', '1980-02-09');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (36, 'Willis', 'Glenn', 'wglennz@reverbnation.com', '538-828-7890', '1958-09-27');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (37, 'Hadleigh', 'Gauler', 'hgauler10@xinhuanet.com', '956-677-5577', '1964-02-26');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (38, 'Margalit', 'Hawgood', 'mhawgood11@woothemes.com', '205-485-0385', '1961-09-27');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (39, 'Anjanette', 'Barkess', 'abarkess12@fema.gov', '798-999-6462', '1976-09-10');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (40, 'Edgardo', 'Iorillo', 'eiorillo13@yolasite.com', '657-968-8388', '1963-07-08');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (41, 'Batholomew', 'Jell', 'bjell14@wisc.edu', '733-183-4911', '1993-12-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (42, 'Caressa', 'Alfuso', 'calfuso15@wordpress.org', '683-708-2488', '1950-03-04');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (43, 'Allen', 'De la Barre', 'adelabarre16@hp.com', '258-557-9612', '1968-09-18');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (44, 'Ailene', 'Alden', 'aalden17@abc.net.au', '767-621-1340', '1953-06-02');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (45, 'Berny', 'Skipton', 'bskipton18@goodreads.com', '291-956-2732', '1976-01-24');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (46, 'Perren', 'Sherwin', 'psherwin19@posterous.com', '623-337-9891', '1958-05-30');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (47, 'Hedi', 'Scoggins', 'hscoggins1a@tuttocitta.it', '715-327-2391', '1957-03-28');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (48, 'Eada', 'Rieme', 'erieme1b@utexas.edu', '575-982-3770', '1997-02-10');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (49, 'Flinn', 'Marte', 'fmarte1c@apache.org', '536-781-5961', '1980-10-18');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (50, 'Jessie', 'Gouch', 'jgouch1d@bizjournals.com', '339-780-2780', '1989-02-06');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (51, 'Ashlin', 'Gillebert', 'agillebert1e@nyu.edu', '197-374-7977', '1959-06-26');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (52, 'Mufinella', 'Gockelen', 'mgockelen1f@prlog.org', '766-184-2184', '1967-10-31');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (53, 'Gavrielle', 'Raddan', 'graddan1g@networkadvertising.org', '759-955-1218', '1969-06-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (54, 'Hasheem', 'Cathrae', 'hcathrae1h@noaa.gov', '998-808-7703', '1985-09-14');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (55, 'Lynn', 'Feld', 'lfeld1i@constantcontact.com', '610-871-4462', '1972-10-29');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (56, 'Jennica', 'Boakes', 'jboakes1j@istockphoto.com', '130-800-2197', '1996-03-31');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (57, 'Domenico', 'Swift', 'dswift1k@themeforest.net', '934-796-8033', '1959-01-19');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (58, 'Fernande', 'Woodcock', 'fwoodcock1l@cocolog-nifty.com', '691-496-5407', '1981-11-24');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (59, 'Perry', 'Stuchbury', 'pstuchbury1m@istockphoto.com', '812-443-5938', '2003-11-05');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (60, 'Fraze', 'Jachimak', 'fjachimak1n@blogger.com', '937-204-7513', '1989-07-08');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (61, 'Roman', 'Cattini', 'rcattini1o@cnn.com', '647-547-9740', '1984-07-16');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (62, 'Florina', 'Wortley', 'fwortley1p@imgur.com', '186-838-8747', '1960-01-30');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (63, 'Marlo', 'Sikorsky', 'msikorsky1q@geocities.com', '305-909-1033', '1954-04-09');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (64, 'Pip', 'Odegaard', 'podegaard1r@twitter.com', '673-524-3940', '2002-02-22');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (65, 'Sheena', 'Pring', 'spring1s@bigcartel.com', '161-873-5912', '1990-03-23');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (66, 'Maureene', 'Gillum', 'mgillum1t@prlog.org', '891-570-2692', '1978-05-27');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (67, 'Sonja', 'McCosker', 'smccosker1u@google.com', '221-809-5655', '1951-04-28');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (68, 'Kevan', 'Bassam', 'kbassam1v@zdnet.com', '982-632-7722', '1989-02-12');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (69, 'Rayna', 'Hardwin', 'rhardwin1w@vimeo.com', '827-572-1965', '1992-09-24');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (70, 'Ulrikaumeko', 'Heater', 'uheater1x@bizjournals.com', '938-330-8785', '1999-04-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (71, 'Arlee', 'Bowich', 'abowich1y@howstuffworks.com', '274-734-1058', '1985-02-08');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (72, 'Marigold', 'Reiner', 'mreiner1z@plala.or.jp', '738-475-9138', '1963-05-13');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (73, 'Abbye', 'Kinver', 'akinver20@nbcnews.com', '706-469-6759', '1949-06-06');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (74, 'Rochell', 'Stuchbury', 'rstuchbury21@scribd.com', '517-500-7519', '1985-11-02');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (75, 'Anastassia', 'Scolding', 'ascolding22@t-online.de', '373-327-8957', '1994-05-19');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (76, 'Meghan', 'Ratley', 'mratley23@guardian.co.uk', '899-427-3778', '1998-06-03');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (77, 'Hunfredo', 'Elbourn', 'helbourn24@imgur.com', '187-614-4075', '1948-12-10');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (78, 'Lexi', 'Monk', 'lmonk25@joomla.org', '243-635-9853', '1996-01-12');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (79, 'Catrina', 'McVanamy', 'cmcvanamy26@senate.gov', '945-234-2556', '1959-05-20');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (80, 'Simonette', 'Connerly', 'sconnerly27@last.fm', '715-873-7210', '1954-09-24');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (81, 'Foss', 'Bayne', 'fbayne28@howstuffworks.com', '415-624-6701', '1972-03-02');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (82, 'Humfried', 'Clausson', 'hclausson29@bluehost.com', '168-252-2910', '1946-09-02');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (83, 'Arne', 'Apthorpe', 'aapthorpe2a@bloomberg.com', '753-832-9541', '2004-09-05');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (84, 'Koressa', 'Reynish', 'kreynish2b@timesonline.co.uk', '795-945-3602', '1974-06-04');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (85, 'Barton', 'Dickinson', 'bdickinson2c@oaic.gov.au', '121-154-6313', '1977-01-24');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (86, 'Sterling', 'MacNalley', 'smacnalley2d@miitbeian.gov.cn', '115-869-1290', '1968-09-04');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (87, 'Sisile', 'Coners', 'sconers2e@4shared.com', '942-516-6627', '1994-10-15');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (88, 'Holly', 'Denecamp', 'hdenecamp2f@google.co.jp', '139-942-2271', '2004-12-22');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (89, 'Algernon', 'Baglin', 'abaglin2g@biglobe.ne.jp', '774-115-0819', '1963-04-28');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (90, 'Konstanze', 'Aslin', 'kaslin2h@about.me', '869-271-8577', '1964-06-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (91, 'Dniren', 'Hovard', 'dhovard2i@mashable.com', '114-437-9055', '1966-08-22');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (92, 'Marilee', 'Wicks', 'mwicks2j@netlog.com', '328-708-3498', '1984-03-13');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (93, 'Timmie', 'Olphert', 'tolphert2k@gov.uk', '442-115-1814', '1953-03-03');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (94, 'Pascal', 'Whittlesey', 'pwhittlesey2l@taobao.com', '216-883-4452', '2000-03-08');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (95, 'Chen', 'Coverley', 'ccoverley2m@blinklist.com', '898-908-7087', '1951-11-29');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (96, 'Nikolas', 'Farrent', 'nfarrent2n@hc360.com', '190-477-1053', '1990-09-27');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (97, 'Erin', 'Connechie', 'econnechie2o@symantec.com', '498-421-8070', '1972-09-05');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (98, 'Silas', 'Piper', 'spiper2p@buzzfeed.com', '210-447-4337', '1966-01-13');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (99, 'Joyous', 'Hallitt', 'jhallitt2q@skype.com', '347-769-6497', '1969-11-07');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (100, 'Delano', 'Thurlborn', 'dthurlborn2r@answers.com', '409-572-3780', '1949-11-20');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (101, 'William', 'Hökegård', 'william.hokegard@outlook.com', '073-4255858', '1992-04-13');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (102, 'Test', 'testarn', 'test@gmail.com', '666', '1966-66-66');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (103, 'Lajtwejt', 'Wejtlajt', 'yebuddy@gmail.com', '1337', '2000-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (104, 'Benjamin', 'Erman', 'benjesus@outlook.com', '073-1337', '1997-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (105, 'Lukas', 'Lundblad', 'luckyluke@gmail.com', '1337', '199-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (106, 'Yaya', 'Yeboi', 'test123@gmail.com', '073-1234567', '1900-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (107, 'Lara', 'Jasem', 'trolol@gmail.com', '073-33233', '1996-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (108, 'Test', 'testan', 'test@gmail.com', '123456', '2000-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (109, 'Mattias', 'Herzig', 'mattiasherzig@nodehill.com', '073-1337', '1990-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (110, 'Benjamin', 'Berglund', 'benjaminberglund@nodehill.com', '073-1234567', '1985-01-01');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (111, 'Tom', 'Riddle', 'tomriddle@lord.com', '073-987654321', '1850-10-10');
INSERT INTO guest_information (id, first_name, last_name, email, phonenumber, birthdate) VALUES (112, 'Lara', 'Jasem', 'jappgädi@gmail.com', '073-21321321', '1996-01-01');

-- Table: payments
CREATE TABLE payments (id INTEGER PRIMARY KEY NOT NULL, book_id INT (10) NOT NULL, full_name VARCHAR (255) NOT NULL, total_price INT (10) NOT NULL);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (1, 1, 'Putnem Tosh', 14150);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (2, 2, 'Letizia Jerzak', 15000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (3, 3, 'Cherianne Guard', 19100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (4, 5, 'Dorelia Fowkes', 20000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (5, 6, 'Cass Doulton', 5250);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (6, 7, 'Kathleen Westney', 6350);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (7, 8, 'Giacobo Wilprecht', 5350);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (8, 9, 'Olav Aleso', 10100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (9, 10, 'Aristotle Cartmill', 13800);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (10, 11, 'Miranda Town', 21800);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (11, 12, 'Marcy Coote', 1590);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (12, 13, 'Wolf Huntly', 42000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (13, 14, 'Ike MacClure', 8070);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (14, 15, 'Talya Firbanks', 2750);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (15, 16, 'Dorelia Fowkes', 92000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (16, 17, 'Davie Embling', 650);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (17, 18, 'Putnem Tosh', 86150);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (18, 19, 'Leonard McPolin', 91800);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (19, 20, 'Andrea Fretwell', 9260);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (20, 21, 'Cristine Leidl', 38400);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (21, 22, 'Omar Steen', 4200);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (22, 23, 'Bendicty Bagger', 6300);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (23, 24, 'Phaidra Verey', 2600);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (24, 25, 'Hillier Saph', 3280);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (25, 26, 'Bendicty Bagger', 2100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (26, 27, 'Noella Ruxton', 16000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (27, 28, 'Cristine Leidl', 38400);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (28, 29, 'Willis Glenn', 6100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (29, 30, 'Hadleigh Gauler', 67000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (30, 31, 'Margalit Hawgood', 87000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (31, 32, 'Willis Glenn', 17700);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (32, 33, 'Letizia Jerzak', 10000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (33, 35, 'Kathleen Westney', 2150);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (34, 37, 'Cherianne Guard', 4100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (35, 38, 'Cherianne Guard', 4100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (36, 39, 'Miranda Town', 121800);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (37, 40, 'Marcy Coote', 3660);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (38, 41, 'Willis Glenn', 23500);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (39, 42, 'William Hökegård', 8100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (40, 45, 'Marcy Coote', 1590);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (41, 46, 'William Hökegård', 5200);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (42, 47, 'Marcy Coote', 1590);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (43, 48, 'Talya Firbanks', 1450);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (44, 49, 'Marilee Wicks', 900);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (45, 50, 'Hunfredo Elbourn', 700);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (46, 51, 'Miranda Town', 16000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (47, 52, 'Benjamin Erman', 7500);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (48, 54, 'Giacobo Wilprecht', 800);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (49, 55, 'Giacobo Wilprecht', 800);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (50, 56, 'Tom Riddle', 4000);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (51, 57, 'Cherianne Guard', 22100);
INSERT INTO payments (id, book_id, full_name, total_price) VALUES (52, 58, 'Dorelia Fowkes', 56000);

-- Table: rooms
CREATE TABLE rooms (id INTEGER PRIMARY KEY NOT NULL, destination_id INT (10) NOT NULL REFERENCES destinations (id) ON DELETE NO ACTION ON UPDATE NO ACTION, room_type VARCHAR (255) NOT NULL, price_per_night INT (10) NOT NULL, maximum_guests INT (10) NOT NULL);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (1, 1, 'Single', 700, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (2, 1, 'Double', 900, 3);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (3, 1, 'Suite', 2000, 6);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (4, 1, 'Single', 700, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (5, 1, 'Single', 700, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (6, 1, 'Double', 900, 3);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (7, 1, 'Suite', 3000, 8);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (8, 2, 'Single', 500, 1);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (9, 2, 'Single', 550, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (10, 2, 'Double', 660, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (11, 2, 'Double', 690, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (12, 2, 'Double', 650, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (13, 3, 'Single', 990, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (14, 3, 'Single', 990, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (15, 3, 'Single', 990, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (16, 3, 'Double', 1050, 3);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (17, 3, 'Double', 1050, 3);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (18, 3, 'Suite', 1990, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (19, 4, 'Single', 2000, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (20, 4, 'Double', 2900, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (21, 4, 'Double', 3000, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (22, 4, 'Suite', 5000, 5);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (23, 5, 'Single', 2500, 1);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (24, 5, 'Single', 2900, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (25, 5, 'Single', 2900, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (26, 5, 'Double', 3000, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (27, 5, 'Double', 3000, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (28, 5, 'Double', 3300, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (29, 5, 'Double', 3700, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (30, 5, 'Suite', 5000, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (31, 5, 'Suite', 6000, 6);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (32, 5, 'Suite', 7000, 8);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (33, 6, 'Double', 5000, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (34, 6, 'Double', 5500, 5);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (35, 6, 'Suite', 8000, 8);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (36, 6, 'Suite', 8900, 9);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (37, 6, 'Suite', 9000, 8);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (38, 7, 'Single', 500, 1);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (39, 7, 'Single', 550, 1);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (40, 7, 'Double', 600, 3);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (41, 7, 'Double', 650, 3);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (42, 8, 'Single', 900, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (43, 8, 'Single', 990, 2);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (44, 8, 'Double', 1050, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (45, 8, 'Double', 1050, 4);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (46, 8, 'Suite', 3000, 5);
INSERT INTO rooms (id, destination_id, room_type, price_per_night, maximum_guests) VALUES (47, 8, 'Suite', 4500, 5);

-- View: all_rooms
CREATE VIEW all_rooms AS SELECT rooms.id AS 'Room_Number', 
destinations.city AS 'City', 
destinations.hotel_name AS 'Hotel_name', 
destinations.rating AS 'Rating',
destinations.distance_centre AS 'Distance_centrum',
destinations.distance_beach AS 'Distance_beach',
rooms.room_type AS 'Room_type',
rooms.price_per_night AS 'Price_per_night',
rooms.maximum_guests AS 'Maximum_guests',
destinations.restaurant AS 'Restaurant',
destinations.kids_club AS 'Kids_club',
destinations.pool AS 'Pool',
destinations.entertainment AS 'Entertainment' 
FROM destinations 
JOIN rooms ON destinations.id = rooms.destination_id;

-- View: avail_dates
CREATE VIEW avail_dates AS SELECT * FROM booked_rooms 
WHERE NOT (checkin_date BETWEEN '2022-07-01' AND '2022-07-08') 
AND NOT (checkout_date BETWEEN '2022-07-01' AND '2022-07-08')
OR checkin_date IS NULL AND checkout_date IS NULL;

-- View: avail_dates_hotel
CREATE VIEW avail_dates_hotel AS SELECT * FROM booked_rooms 
WHERE room_number NOT IN (SELECT room_number FROM booked_rooms WHERE
checkin_date BETWEEN '2022-07-01' AND '2022-07-08') 
AND NOT (checkout_date BETWEEN '2022-07-01' AND '2022-07-08') AND hotel_number = '3'
OR checkin_date IS NULL AND checkout_date IS NULL AND hotel_number = '3'
GROUP BY room_number;

-- View: avail_dates_newest
CREATE VIEW avail_dates_newest AS SELECT * FROM booked_rooms 
WHERE room_number NOT IN (SELECT room_number FROM booked_rooms WHERE
checkin_date BETWEEN '2022-07-01' AND '2022-07-08') 
AND NOT (checkout_date BETWEEN '2022-07-01' AND '2022-07-08')
OR checkin_date IS NULL AND checkout_date IS NULL
GROUP BY room_number;

-- View: avail_rooms_by_entertainment
CREATE VIEW avail_rooms_by_entertainment AS SELECT rooms.id AS 'Room Number', 
destinations.city AS 'City', 
destinations.hotel_name AS 'Hotel name', 
destinations.rating AS 'Rating',
destinations.distance_centre AS 'Distance centrum',
destinations.distance_beach AS 'Distance beach',
rooms.room_type AS 'Room type',
rooms.price_per_night AS 'Price per night',
booked_dates.checkin_date AS 'Check in date',
booked_dates.checkout_date AS 'Check out date',
rooms.maximum_guests AS 'Maximum guests',
destinations.restaurant AS 'Restaurant',
destinations.kids_club AS 'Kids club',
destinations.pool AS 'Pool',
destinations.entertainment AS 'Entertainment' 
FROM destinations 
JOIN rooms ON destinations.id = rooms.destination_id
LEFT JOIN booked_dates ON rooms.id = booked_dates.room_id
WHERE destinations.entertainment = '1' AND destinations.pool = '1'
GROUP BY rooms.id;

-- View: booked_guests
CREATE VIEW booked_guests AS SELECT DISTINCT booked_dates.booked_id AS 'Guest_booking_id', 
rooms.id AS 'Room_id',
guest_bookings.additional_choices_id AS 'Choice_id',
guest_information.first_name AS 'First_name',
guest_information.last_name AS 'Last_name',
guest_information.email AS 'Email',
booked_dates.checkin_date AS 'Checkin_date', 
booked_dates.checkout_date AS 'Checkout_date',
rooms.room_type AS 'Room_type', 
destinations.city AS 'City',
destinations.hotel_name AS 'Hotel_name', 
guest_bookings.total_guests AS 'Total_guests',
rooms.maximum_guests AS 'Maximum_guests'
FROM guest_bookings 
JOIN guest_information ON guest_information.id = guest_bookings.guests_id
JOIN rooms ON rooms.id = guest_bookings.room_id 
JOIN destinations ON destinations.id = rooms.destination_id
LEFT JOIN booked_dates ON rooms.id = booked_dates.room_id AND booked_dates.booked_id = guest_bookings.booked_dates_id
ORDER BY booked_dates.booked_id;

-- View: booked_rooms
CREATE VIEW booked_rooms AS SELECT DISTINCT rooms.id AS 'Room_Number', 
destinations.id AS 'Hotel_number',
destinations.hotel_name AS 'Hotel_name', 
destinations.city AS 'City', 
destinations.rating AS 'Rating',
destinations.distance_centre AS 'Distance_centrum',
destinations.distance_beach AS 'Distance_beach',
rooms.room_type AS 'Room_type',
rooms.price_per_night AS 'Price_per_night',
booked_dates.checkin_date AS 'Checkin_date',
booked_dates.checkout_date AS 'Checkout_date',
rooms.maximum_guests AS 'Maximum_guests',
destinations.restaurant AS 'Restaurant',
destinations.kids_club AS 'Kids_club',
destinations.pool AS 'Pool',
destinations.entertainment AS 'Entertainment'
FROM destinations JOIN rooms ON destinations.id = rooms.destination_id
LEFT JOIN booked_dates ON rooms.id = booked_dates.room_id;

-- View: booked_rooms_dates
CREATE VIEW booked_rooms_dates AS SELECT * FROM booked_rooms WHERE NOT (('2022-07-01' <= checkout_date AND '2022-07-01' >= checkin_date) 
    OR ('2022-07-08' <= checkout_date AND '2022-07-08' >= checkin_date));

-- View: bookings
CREATE VIEW bookings AS select `rooms`.`id` AS `id`,`destinations`.`city` AS `city`,`destinations`.`hotel_name` AS `hotel_name`,`destinations`.`rating` AS `rating`,`destinations`.`distance_centre` AS `distance_centre`,`destinations`.`distance_beach` AS `distance_beach`,`rooms`.`room_type` AS `room_type`,`rooms`.`price_per_night` AS `price_per_night`,`booked_dates`.`checkin_date` AS `checkin_date`,`booked_dates`.`checkout_date` AS `checkout_date`,`rooms`.`maximum_guests` AS `maximum_guests`,`destinations`.`restaurant` AS `restaurant`,`destinations`.`kids_club` AS `kids_club`,`destinations`.`pool` AS `pool`,`destinations`.`entertainment` AS `entertainment` from ((`destinations` join `rooms` on((`destinations`.`id` = `rooms`.`destination_id`))) left join `booked_dates` on((`rooms`.`id` = `booked_dates`.`room_id`)));

-- View: filter_rooms
CREATE VIEW filter_rooms AS select `bookings`.`id` AS `id`,`bookings`.`city` AS `city`,`bookings`.`hotel_name` AS `hotel_name`,`bookings`.`rating` AS `rating`,`bookings`.`distance_beach` AS `distance_beach`,`bookings`.`distance_centre` AS `distance_centre`,`bookings`.`room_type` AS `room_type`,`bookings`.`price_per_night` AS `price_per_night`,`bookings`.`checkin_date` AS `checkin_date`,`bookings`.`checkout_date` AS `checkout_date`,`bookings`.`restaurant` AS `restaurant`,`bookings`.`kids_club` AS `kids_club`,`bookings`.`pool` AS `pool`,`bookings`.`entertainment` AS `entertainment`,`bookings`.`maximum_guests` AS `maximum_guests` from `bookings` where ((('2022-06-01' not between `bookings`.`checkin_date` and `bookings`.`checkout_date`) and ('2022-06-02' not between `bookings`.`checkin_date` and `bookings`.`checkout_date`) and ('2022-06-01' between '2022-06-01' and '2022-07-30') and ('2022-06-02' between '2022-06-02' and '2022-07-31') and ('2022-06-02' > '2022-06-01')));

-- View: payments_customer_name
CREATE VIEW payments_customer_name AS SELECT book_id, full_name, total_price
FROM total_price_working;

-- View: price_and_meal
CREATE VIEW price_and_meal AS SELECT booked_dates.booked_id AS 'Book id', booked_dates.room_id AS 'Room id', guest_information.first_name || " " || guest_information.last_name AS 'Full name', 
destinations.city AS 'City', destinations.hotel_name AS 'Hotel name',
rooms.room_type AS 'Room type',
booked_dates.checkin_date AS 'Check in date',
booked_dates.checkout_date AS 'Check out date',
additional_choices.meal_choice AS 'Meal choice',
additional_choices.additional_bed AS 'Additional bed',
additional_prices.half_board AS 'Half board price',
additional_prices.full_board AS 'Full board price',
additional_prices.additional_bed AS 'Bed price',
rooms.price_per_night AS 'Price per night',
julianday(booked_dates.checkout_date) - julianday(booked_dates.checkin_date) AS 'Total days',
((julianday(booked_dates.checkout_date) - julianday(booked_dates.checkin_date)) * rooms.price_per_night) AS 'Room_price',
CASE additional_choices.meal_choice WHEN 'Half board' THEN additional_prices.half_board + 'Room_price' WHEN 'Full board' 
THEN additional_prices.full_board + 'Room_price' ELSE 'Room_price' END AS 'Total price'
FROM destinations
JOIN additional_prices ON destinations.id = additional_prices.destination_id
JOIN rooms ON destinations.id = rooms.destination_id
JOIN guest_bookings ON rooms.id = guest_bookings.room_id
JOIN additional_choices ON additional_choices.room_id = rooms.id
JOIN guest_information ON guest_information.id = guest_bookings.guests_id
JOIN booked_dates ON booked_dates.room_id = rooms.id
GROUP BY booked_dates.booked_id;

-- View: roomstest
CREATE VIEW roomstest AS SELECT * FROM all_rooms
where (('2022-06-02' > '2022-06-01') 
and ('2022-06-01' between '2022-06-01' and '2022-07-30') 
and ('2022-06-02' between '2022-06-02' and '2022-07-31'));

-- View: total_price
CREATE VIEW total_price AS SELECT booked_dates.booked_id AS 'Book_id',
booked_dates.room_id AS 'Room_id', 
guest_information.id AS 'Guest_id',
guest_information.first_name || " " || guest_information.last_name AS 'Full_name', 
destinations.city AS 'City', 
destinations.hotel_name AS 'Hotel_name',
rooms.room_type AS 'Room_type',
booked_dates.checkin_date AS 'Check_in_date',
booked_dates.checkout_date AS 'Check_out_date',
additional_choices.meal_choice AS 'Meal_choice',
additional_choices.additional_bed AS 'Additional_bed',
additional_prices.half_board AS 'Half_board_price',
additional_prices.full_board AS 'Full_board_price',
additional_prices.additional_bed AS 'Bed_price',
rooms.price_per_night AS 'Price_per_night',
julianday(booked_dates.checkout_date) - julianday(booked_dates.checkin_date) AS 'Total_days',
((julianday(booked_dates.checkout_date) - julianday(booked_dates.checkin_date)) * rooms.price_per_night) AS 'Total_room_price'
FROM destinations
JOIN additional_prices ON destinations.id = additional_prices.destination_id
JOIN rooms ON destinations.id = rooms.destination_id
JOIN guest_bookings ON rooms.id = guest_bookings.room_id
JOIN additional_choices ON additional_choices.room_id = rooms.id
JOIN guest_information ON guest_information.id = guest_bookings.guests_id
JOIN booked_dates ON booked_dates.room_id = rooms.id
GROUP BY booked_dates.booked_id;

-- View: total_price_complete
CREATE VIEW total_price_complete AS SELECT
book_id, full_name, city, hotel_name, room_type, check_in_date, check_out_date, meal_choice, 
additional_bed, total_days, price_per_night, total_room_price,
case Meal_choice when 'Half board' 
then (Half_board_price + total_room_price) 
when 'Full board' then (Full_board_price + total_room_price) 
else total_room_price end AS 'Total_price'
from total_price;

-- View: total_price_working
CREATE VIEW total_price_working AS SELECT
book_id, room_id, guest_id, full_name, city, hotel_name, room_type, check_in_date, check_out_date, meal_choice, 
additional_bed, total_days, price_per_night, Full_board_price, half_board_price, bed_price, total_room_price,
case 
when meal_choice = 'Half board' and Additional_bed = 'Yes' then (Half_board_price + Bed_price + total_room_price) 
when meal_choice = 'Full board' and Additional_bed = 'Yes' then (Full_board_price + Bed_price + total_room_price) 
when Additional_bed = 'Yes' then (Bed_price + total_room_price) 
when meal_Choice = 'Full board' then (Full_board_price + total_room_price) 
when meal_Choice = 'Half board' then (Half_board_price + total_room_price) 
else total_room_price end AS 'Total_price'
from total_price;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
