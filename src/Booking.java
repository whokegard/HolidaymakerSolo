public class Booking {
    private Database database = new Database();
    private Customer customer = new Customer();
    private Destination destination = new Destination();
    private String meal;
    private String bed;
    public static final String TEXT_GREEN = "\u001B[32m";
    public static final String TEXT_RESET = "\u001B[0m";

    public void searchBooking(){
        try{
            String firstName = Dialog.dialogString("Customer first name: ");
            String lastName = Dialog.dialogString("Customer last name: ");
            database.searchBookedGuest(firstName, lastName);
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addBooking() {
        try{
            boolean hotel = true;
            while (hotel) {
                int hotelChoice = Dialog.dialog("(1) Show all destinations." + "\n" +
                        "(2) Order destinations by highest rating." + "\n" +
                        "(3) Order destinations by distance to centre." + "\n" +
                        "(4) Order destinations by distance to beach." + "\n" +
                        "(5) Done." + "\n", 1, 5);
                if (hotelChoice == 1) {
                    destination.searchDestination();
                }
                if (hotelChoice == 2) {
                    destination.ratingDestination();
                }
                if (hotelChoice == 3) {
                    destination.centreDestination();
                }
                if (hotelChoice == 4) {
                    destination.beachDestination();
                }
                if (hotelChoice == 5) {
                    hotel = false;
                }
            }
                int hotel_id = Dialog.dialog("Destination ID?");
                String checkin_date = Dialog.dialogString("Check in date? (YYYY-MM-DD)");
                String checkout_date = Dialog.dialogString("Check out date? (YYYY-MM-DD)");
                database.showRoomsDate(checkin_date, checkout_date, hotel_id);
                int room_id = Dialog.dialog("Room ID?");
                database.addBookingRoom(room_id, checkin_date, checkout_date);
                int mealChoice = Dialog.dialog("Meal choice?" + "\n" +
                        "(1) None." + "\n" +
                        "(2) Half board." + "\n" +
                        "(3) Full board." + "\n", 1, 3);
                if (mealChoice == 1) {
                    meal = "None";
                }
                if (mealChoice == 2) {
                    meal = "Half board";
                }
                if (mealChoice == 3) {
                    meal = "Full board";
                }
                int bedChoice = Dialog.dialog("Additional bed?" + "\n" +
                        "(1) Yes." + "\n" +
                        "(2) No." + "\n", 1, 2);
                if (bedChoice == 1) {
                    bed = "Yes";
                }
                if (bedChoice == 2) {
                    bed = "No";
                }
                int booked_id = database.booked_id;
                database.addAdditionalChoices(room_id, booked_id, meal, bed);
                boolean running = true;
                while (running) {
                    int searchGuest = Dialog.dialog("Search or register new guest?" + "\n" +
                            "(1) Search Guest." + "\n" +
                            "(2) Register new Guest." + "\n" +
                            "(3) No." + "\n", 1, 3);
                    if (searchGuest == 1) {
                        customer.searchCustomer();
                    }
                    if (searchGuest == 2) {
                        customer.addCustomer();
                    }
                    if (searchGuest == 3) {
                        running = false;
                    }
                }
                int totalGuests = Dialog.dialog("How many guests?");
                for (int i = 0; i < totalGuests; i++) {
                    int guestID = Dialog.dialog("Guest id?");
                    int choice_id = database.choice_id;
                    database.guestBooking(guestID, room_id, choice_id, booked_id, totalGuests);
                    System.out.println(TEXT_GREEN + "Booking added." + TEXT_RESET);
                }
            }
        catch(Exception e){
                e.printStackTrace();
            }
        }

    public void cancelBooking() {
        try {
            int id = Dialog.dialog("Booking id?");
            database.removeBooking(id);
            database.removeBookingGuest(id);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void updateBooking() {
        try {
            searchBooking();
            int booked_id = Dialog.dialog("Booking ID?");
            int room_id = Dialog.dialog("Room ID?");
            String checkin_date = Dialog.dialogString("Check-in date? (YYYY-MM-DD)");
            String checkout_date = Dialog.dialogString("Check-out date? (YYYY-MM-DD)");
            database.changeBooking(booked_id, room_id, checkin_date, checkout_date);
            int choice_id = Dialog.dialog("Choice ID?");
            int mealChoice = Dialog.dialog("Meal choice?" + "\n" +
                    "(1) None." + "\n" +
                    "(2) Half board." + "\n" +
                    "(3) Full board." + "\n", 1, 3);
            if (mealChoice == 1) {
                meal = "None";
            }
            if (mealChoice == 2) {
                meal = "Half board";
            }
            if (mealChoice == 3) {
                meal = "Full board";
            }
            int bedChoice = Dialog.dialog("Additional bed?" + "\n" +
                    "(1) Yes." + "\n" +
                    "(2) No." + "\n", 1, 2);
            if (bedChoice == 1) {
                bed = "Yes";
            }
            if (bedChoice == 2) {
                bed = "No";
            }
            database.changeChoices(choice_id, room_id, booked_id, meal, bed);
            boolean running = true;
            while (running) {
                int searchGuest = Dialog.dialog("Search or register new guest?" + "\n" +
                        "(1) Search Guest." + "\n" +
                        "(2) Register new Guest." + "\n" +
                        "(3) No." + "\n", 1, 3);
                if (searchGuest == 1) {
                    customer.searchCustomer();
                }
                if (searchGuest == 2) {
                    customer.addCustomer();
                }
                if (searchGuest == 3) {
                    running = false;
                }
            }
                int totalGuests = Dialog.dialog("How many guests?");
                for (int i = 0; i < totalGuests; i++) {
                    int guestID = Dialog.dialog("Guest id?");
                    database.changeGuest(guestID, room_id, choice_id, booked_id, totalGuests);
                }
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
}
