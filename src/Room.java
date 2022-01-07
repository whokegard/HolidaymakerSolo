
public class Room {
    private Database database = new Database();


    public void showAllRooms() {
        try {
            database.showRooms();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void roomPrice() {
        try {
            int price = Dialog.dialog("Search for room by price. (Min 500, max 10000)", 500, 10000);
            database.searchRoomPrice(price);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
