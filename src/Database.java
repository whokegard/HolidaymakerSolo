import java.sql.*;

public class Database {
    private Connection connection = null;
    private PreparedStatement statement;
    private ResultSet resultSet;


    public Database() {
        connect();
    }

    public void connect() {
        try {
            connection = DriverManager.getConnection("jdbc:sqlite:HolidaymakerSolo.sqlite");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public boolean searchBookedGuest(String first_name, String last_name) {
        try {
            statement = connection.prepareStatement("SELECT guest_booking_id, room_id, first_name, last_name, city, hotel_name, checkin_date, checkout_date FROM booked_guests\n" +
                    "WHERE first_name = ?\n" +
                    "AND last_name = ?\n");

            statement.setString(1, first_name);
            statement.setString(2, last_name);

            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }

            while (resultSet.next()) {
                String bookedGuest =
                        "------------------------------" + "\n" +
                                "Booking ID: " + resultSet.getString("guest_booking_id") + "\n" +
                                "Room ID: " + resultSet.getString("room_id") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "First name: " + resultSet.getString("first_name") + "\n" +
                                "Last name: " + resultSet.getString("last_name") + "\n" +
                                "Check in date: " + resultSet.getString("checkin_date") + "\n" +
                                "Check out date: " + resultSet.getString("checkout_date") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(bookedGuest);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean searchCustomer(String first_name, String last_name) {
        try {
            statement = connection.prepareStatement("SELECT id, first_name, last_name, email, phonenumber, birthdate FROM guest_information\n" +
                    "WHERE first_name = ?\n" +
                    "AND last_name = ?\n");
            statement.setString(1, first_name);
            statement.setString(2, last_name);
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String customer =
                        "------------------------------" + "\n" +
                                "Customer ID: " + resultSet.getString("id") + "\n" +
                                "First name: " + resultSet.getString("first_name") + "\n" +
                                "Last name: " + resultSet.getString("last_name") + "\n" +
                                "Email: " + resultSet.getString("email") + "\n" +
                                "Phone number: " + resultSet.getString("phonenumber") + "\n" +
                                "Birthdate: " + resultSet.getString("birthdate") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(customer);
            }
            return true;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public void newCustomer(String first_name, String last_name, String email, String phonenumber, String birthdate) {
        try {
            statement = connection.prepareStatement("INSERT INTO guest_information (first_name, last_name, email, phonenumber, birthdate) VALUES (?, ?, ?, ?, ?)");
            statement.setString(1, first_name);
            statement.setString(2, last_name);
            statement.setString(3, email);
            statement.setString(4, phonenumber);
            statement.setString(5, birthdate);
            System.out.println("New customer " + first_name + " " + last_name + " added. " + "\n");
            statement.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
            try {
                statement = connection.prepareStatement("SELECT id FROM guest_information WHERE first_name = ? AND last_name = ? AND email = ? AND phonenumber = ? AND birthdate = ?; ");
                statement.setString(1, first_name);
                statement.setString(2, last_name);
                statement.setString(3, email);
                statement.setString(4, phonenumber);
                statement.setString(5, birthdate);
                resultSet = statement.executeQuery();
                String customer_id =
                        "------------------------------" + "\n" +
                                "Customer ID: " + resultSet.getString("id") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(customer_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void newPayment() {
        try {
            statement = connection.prepareStatement("DELETE FROM payments;");
            statement.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        try {
            statement = connection.prepareStatement("INSERT INTO payments (book_id, full_name, total_price) SELECT book_id, full_name, total_price FROM total_price_working");
            System.out.println("Payments updated." + "\n");
            statement.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public boolean showPayment() {
        try {
            statement = connection.prepareStatement("SELECT * FROM payments");
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String payments =
                        "------------------------------" + "\n" +
                                "Payment ID: " + resultSet.getString("id") + "\n" +
                                "Booking ID: " + resultSet.getString("book_id") + "\n" +
                                "Full name: " + resultSet.getString("full_name") + "\n" +
                                "Total price: " + resultSet.getString("total_price") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(payments);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean showDestination() {
        try {
            statement = connection.prepareStatement("SELECT * FROM destinations");
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String destination =
                        "------------------------------" + "\n" +
                                "Destination ID: " + resultSet.getString("id") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "Restaurant: " + resultSet.getString("restaurant") + "\n" +
                                "Kids club: " + resultSet.getString("kids_club") + "\n" +
                                "Entertainment: " + resultSet.getString("entertainment") + "\n" +
                                "Rating: " + resultSet.getString("rating") + "\n" +
                                "Distance centre: " + resultSet.getString("distance_centre") + "\n" +
                                "Distance beach: " + resultSet.getString("distance_beach") + "\n" +
                                "Amount of rooms: " + resultSet.getString("number_of_rooms") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(destination);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean showRatingDestination() {
        try {
            statement = connection.prepareStatement("SELECT * FROM destinations ORDER BY Rating DESC");
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String destination =
                        "------------------------------" + "\n" +
                                "Destination ID: " + resultSet.getString("id") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "Restaurant: " + resultSet.getString("restaurant") + "\n" +
                                "Kids club: " + resultSet.getString("kids_club") + "\n" +
                                "Entertainment: " + resultSet.getString("entertainment") + "\n" +
                                "Rating: " + resultSet.getString("rating") + "\n" +
                                "Distance centre: " + resultSet.getString("distance_centre") + "\n" +
                                "Distance beach: " + resultSet.getString("distance_beach") + "\n" +
                                "Amount of rooms: " + resultSet.getString("number_of_rooms") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(destination);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean showCentreDestination() {
        try {
            statement = connection.prepareStatement("SELECT * FROM destinations ORDER BY distance_centre DESC");
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String destination =
                        "------------------------------" + "\n" +
                                "Destination ID: " + resultSet.getString("id") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "Restaurant: " + resultSet.getString("restaurant") + "\n" +
                                "Kids club: " + resultSet.getString("kids_club") + "\n" +
                                "Entertainment: " + resultSet.getString("entertainment") + "\n" +
                                "Rating: " + resultSet.getString("rating") + "\n" +
                                "Distance centre: " + resultSet.getString("distance_centre") + "\n" +
                                "Distance beach: " + resultSet.getString("distance_beach") + "\n" +
                                "Amount of rooms: " + resultSet.getString("number_of_rooms") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(destination);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean showBeachDestination() {
        try {
            statement = connection.prepareStatement("SELECT * FROM destinations ORDER BY distance_beach DESC");
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String destination =
                        "------------------------------" + "\n" +
                                "Destination ID: " + resultSet.getString("id") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "Restaurant: " + resultSet.getString("restaurant") + "\n" +
                                "Kids club: " + resultSet.getString("kids_club") + "\n" +
                                "Entertainment: " + resultSet.getString("entertainment") + "\n" +
                                "Rating: " + resultSet.getString("rating") + "\n" +
                                "Distance centre: " + resultSet.getString("distance_centre") + "\n" +
                                "Distance beach: " + resultSet.getString("distance_beach") + "\n" +
                                "Amount of rooms: " + resultSet.getString("number_of_rooms") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(destination);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public void guestBooking(int guests_id, int room_id, int additional_choices_id, int booked_dates_id, int total_guests) {
        try {
            statement = connection.prepareStatement("INSERT INTO guest_bookings (guests_id, room_id, additional_choices_id, booked_dates_id, total_guests) VALUES (?, ?, ?, ?, ?)");
            statement.setInt(1, guests_id);
            statement.setInt(2, room_id);
            statement.setInt(3, additional_choices_id);
            statement.setInt(4, booked_dates_id);
            statement.setInt(5, total_guests);
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void removeCustomer(int id) {
        try {
            statement = connection.prepareStatement("DELETE FROM guest_information WHERE id = ?");
            statement.setInt(1, id);
            System.out.println("Customer " + id + " deleted." + "\n");
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void removeBooking(int id) {
        try {
            statement = connection.prepareStatement("DELETE FROM booked_dates WHERE booked_id = ?");
            statement.setInt(1, id);
            System.out.println("Booking " + id + " deleted." + "\n");
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void removeBookingGuest(int id) {
        try {
            statement = connection.prepareStatement("DELETE FROM guest_bookings WHERE booked_dates_id = ?");
            statement.setInt(1, id);
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean showRooms() {
        try {
            statement = connection.prepareStatement("SELECT * FROM all_rooms");
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String rooms =
                        "------------------------------" + "\n" +
                                "Room number: " + resultSet.getString("Room_number") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "Rating: " + resultSet.getString("rating") + "\n" +
                                "Distance centrum: " + resultSet.getString("distance_centrum") + "\n" +
                                "Distance beach: " + resultSet.getString("distance_beach") + "\n" +
                                "Room type: " + resultSet.getString("room_type") + "\n" +
                                "Price per night: " + resultSet.getString("price_per_night") + "\n" +
                                "Maximum guests: " + resultSet.getString("maximum_guests") + "\n" +
                                "Restaurant: " + resultSet.getString("Restaurant") + "\n" +
                                "Kids club: " + resultSet.getString("kids_club") + "\n" +
                                "Pool: " + resultSet.getString("pool") + "\n" +
                                "Entertainment: " + resultSet.getString("entertainment") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(rooms);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public void searchRoomPrice(int price) {
        try {
            statement = connection.prepareStatement("SELECT * FROM all_rooms WHERE price_per_night <= ? ORDER BY price_per_night DESC");
            statement.setInt(1, price);
            statement.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        try {
            statement = connection.prepareStatement("SELECT * FROM all_rooms WHERE price_per_night <= ? ORDER BY price_per_night DESC ");
            statement.setInt(1, price);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
            String rooms =
                    "------------------------------" + "\n" +
                            "Room number: " + resultSet.getString("Room_number") + "\n" +
                            "City: " + resultSet.getString("city") + "\n" +
                            "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                            "Rating: " + resultSet.getString("rating") + "\n" +
                            "Distance centrum: " + resultSet.getString("distance_centrum") + "\n" +
                            "Distance beach: " + resultSet.getString("distance_beach") + "\n" +
                            "Room type: " + resultSet.getString("room_type") + "\n" +
                            "Maximum guests: " + resultSet.getString("maximum_guests") + "\n" +
                            "Restaurant: " + resultSet.getString("Restaurant") + "\n" +
                            "Kids club: " + resultSet.getString("kids_club") + "\n" +
                            "Pool: " + resultSet.getString("pool") + "\n" +
                            "Entertainment: " + resultSet.getString("entertainment") + "\n" +
                            "Price per night: " + resultSet.getString("price_per_night") + "\n" +
                            "------------------------------" + "\n";
            System.out.println(rooms);
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeCustomer(int id, String first_name, String last_name, String email, String phonenumber, String birthdate) {
        try {
            statement = connection.prepareStatement("UPDATE guest_information set first_name = ?, last_name = ?, email = ?, phonenumber = ?, birthdate = ? WHERE id = ?");
            statement.setString(1, first_name);
            statement.setString(2, last_name);
            statement.setString(3, email);
            statement.setString(4, phonenumber);
            statement.setString(5, birthdate);
            statement.setInt(6, id);
            System.out.println("Customer " + first_name + " " + last_name + " updated. " + "\n");
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeBooking(int booked_id, int room_id, String checkin_date, String checkout_date) {
        try {
            statement = connection.prepareStatement("UPDATE booked_dates set room_id = ?, checkin_date = ?, checkout_date = ? WHERE booked_id = ?");
            statement.setInt(1, room_id);
            statement.setString(2, checkin_date);
            statement.setString(3, checkout_date);
            statement.setInt(4, booked_id);
            System.out.println("Booking " + booked_id +  " updated. " + "\n");
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeChoices(int choice_id, int room_id, int booked_id, String meal_choice, String additional_bed) {
        try {
            statement = connection.prepareStatement("UPDATE additional_choices set room_id = ?, booked_dates_id = ?, meal_choice = ?, additional_bed = ? WHERE choice_id = ?");
            statement.setInt(1, room_id);
            statement.setInt(2, booked_id);
            statement.setString(3, meal_choice);
            statement.setString(4, additional_bed);
            statement.setInt(5, choice_id);
            System.out.println("Choices for " + choice_id +  " updated. " + "\n");
            try {
                statement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addBookingRoom(int room_id, String checkin_date, String checkout_date) {
        try {
            statement = connection.prepareStatement("INSERT INTO booked_dates(room_id, checkin_date, checkout_date)\n" +
                    "VALUES(?, ?, ?);");
            statement.setInt(1, room_id);
            statement.setString(2, checkin_date);
            statement.setString(3, checkout_date);
            statement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
        statement = connection.prepareStatement("SELECT booked_id FROM booked_dates WHERE room_id = ? AND checkin_date = ? AND checkout_date = ?; ");
        statement.setInt(1, room_id);
        statement.setString(2, checkin_date);
        statement.setString(3, checkout_date);
        resultSet = statement.executeQuery();
            String booked_id =
                    "------------------------------" + "\n" +
                            "Booking ID: " + resultSet.getString("booked_id") + "\n" +
                            "------------------------------" + "\n";
            System.out.println(booked_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addAdditionalChoices(int room_id, int booked_dates_id, String meal_choice, String additional_bed){
        try {
            statement = connection.prepareStatement("INSERT INTO additional_choices(room_id, booked_dates_id, meal_choice, additional_bed) VALUES(?, ?, ?, ?);");
            statement.setInt(1, room_id);
            statement.setInt(2, booked_dates_id);
            statement.setString(3, meal_choice);
            statement.setString(4, additional_bed);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            statement = connection.prepareStatement("SELECT choice_ID FROM additional_choices WHERE room_id= ? AND booked_dates_id = ? AND meal_choice = ? AND additional_bed = ?; ");
            statement.setInt(1, room_id);
            statement.setInt(2, booked_dates_id);
            statement.setString(3, meal_choice);
            statement.setString(4, additional_bed);
            resultSet = statement.executeQuery();
            String choice_id =
                    "------------------------------" + "\n" +
                            "Additional choice ID: " + resultSet.getString("choice_id") + "\n" +
                            "------------------------------" + "\n";
            System.out.println(choice_id);
        } catch (SQLException e) {
            System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
        }
    }


    public boolean getTotalPrice(int guest_id){
        try {
            statement = connection.prepareStatement("SELECT guest_id, book_id, full_name, city, hotel_name, total_price FROM total_price_working\n" +
                    "WHERE guest_id = ?");
            statement.setInt(1, guest_id);
            try {
                resultSet = statement.executeQuery();
            } catch (SQLException e) {
                System.out.println("Error message: " + "\n" + e.getMessage() + "\n");
            }
            while (resultSet.next()) {
                String customer =
                        "------------------------------" + "\n" +
                                "Booking ID: " + resultSet.getString("book_id") + "\n" +
                                "Full name: " + resultSet.getString("full_name") + "\n" +
                                "City: " + resultSet.getString("city") + "\n" +
                                "Hotel name: " + resultSet.getString("hotel_name") + "\n" +
                                "Total price: " + resultSet.getString("total_price") + "\n" +
                                "------------------------------" + "\n";
                System.out.println(customer);
            }
            return true;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}