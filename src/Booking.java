import javax.print.attribute.standard.DialogOwner;
import java.awt.geom.NoninvertibleTransformException;

public class Booking {
    private Database database = new Database();
    private String meal;
    private String bed;
    public static final String TEXT_GREEN = "\u001B[32m";
    public static final String TEXT_RESET = "\u001B[0m";

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
                String checkin_date = Dialog.dialogString("Check in date? (YYYY-MM-DD)");
                String checkout_date = Dialog.dialogString("Check out date? (YYYY-MM-DD)");
                database.showRoomsDate(checkin_date, checkout_date);
                int room_id = Dialog.dialog("Room ID?");
                database.addBookingRoom(room_id, checkin_date, checkout_date);

                int mealChoice = Dialog.dialog("Meal choice?" + "\n" +
                        "(1) None." + "\n" +
                        "(2) Half board." + "\n" +
                        "(3) Full board." + "\n", 1, 3);
                if(mealChoice == 1){
                    meal = "None";
                }
                if(mealChoice == 2){
                meal = "Half board";
                }
                if(mealChoice == 3){
                meal = "Full board";
                }
            int becChoice = Dialog.dialog("Bed choice?" + "\n" +
                    "(1) Yes." + "\n" +
                    "(2) No." + "\n", 1, 2);
            if(becChoice == 1){
                bed = "Yes";
            }
            if(becChoice == 2){
                bed = "No";
            }
                int booked_id = Dialog.dialog("Book id?");
                database.addAdditionalChoices(room_id, booked_id, meal, bed);

                int totalGuests = Dialog.dialog("How many guests?");
                for (int i = 0; i < totalGuests; i++) {
                    int guestID = Dialog.dialog("Guest id?");
                    int choice_id = Dialog.dialog("Choice id?");
                    database.guestBooking(guestID, room_id, choice_id, booked_id, totalGuests);
                    System.out.println(TEXT_GREEN + "Booking added." + TEXT_RESET);
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
