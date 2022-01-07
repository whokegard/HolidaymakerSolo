
public class Payment {
    private Database database = new Database();
    private Customer customer = new Customer();

    public void searchPayment(){
        try{
            customer.searchCustomer();
            int guest_id = Dialog.dialog("Customer ID?");
            if (!database.getTotalPrice(guest_id)) {
                System.out.println("Couldn't find a customer with id: " + guest_id);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void registerPayment(){
        try{
            database.newPayment();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void showPayment(){
        try{
            database.showPayment();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

}
