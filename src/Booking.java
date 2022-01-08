public class Booking {
    private Database database = new Database();

    public void searchBooking(){
        try{
            String firstName = Dialog.dialogString("Customer first name: ");
            String lastName = Dialog.dialogString("Customer last name: ");
            if (!database.searchBookedGuest(firstName, lastName)) {
                System.out.println("Couldn't find a customer named " + firstName + " " + lastName + ".");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addBooking() {
        try {
            String room = Dialog.dialogString("Do you wanna browse rooms? (Yes/No)");
            if (room.equals("Yes")){
            database.showRooms();
            }
            else {
                int room_id = Dialog.dialog("Room ID?");
                String checkin_date = Dialog.dialogString("Check in date? (YYYY-MM-DD)");
                String checkout_date = Dialog.dialogString("Check out date? (YYYY-MM-DD))");
                database.addBookingRoom(room_id, checkin_date, checkout_date);

                String meal = Dialog.dialogString("Meal choice? (None/Half board/Full board)");
                String bed = Dialog.dialogString("Additional bed? (Yes/No)");
                int booked_id = Dialog.dialog("Book id?");
                database.addAdditionalChoices(room_id, booked_id, meal, bed);

                int totalGuests = Dialog.dialog("How many guests?");
                for (int i = 0; i < totalGuests; i++) {
                    int guestID = Dialog.dialog("Guest id?");
                    int choice_id = Dialog.dialog("Choice id?");
                    database.guestBooking(guestID, room_id, choice_id, booked_id, totalGuests);
                }
            }
        }
        catch(Exception e) {
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
            int booked_id = Dialog.dialog("Booking ID?");
            int room_id = Dialog.dialog("Room ID?");
            String checkin_date = Dialog.dialogString("Check-in date? (YYYY-MM-DD)");
            String checkout_date = Dialog.dialogString("Check-out date? (YYYY-MM-DD)");
            database.changeBooking(booked_id, room_id, checkin_date, checkout_date);
            int choice_id = Dialog.dialog("Choice ID?");
            String meal_choice = Dialog.dialogString("Meal choice? (None/Half board/Full board)");
            String additional_bed = Dialog.dialogString("Additional bed? (Yes/No)");
            database.changeChoices(choice_id, room_id, booked_id, meal_choice, additional_bed);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
}
