public class Payment {
    private Database database = new Database();
    private Customer customer = new Customer();

    public void searchPayment(){
        try{
            customer.searchCustomer();
            int guest_id = Dialog.dialog("Customer ID?");
            database.getTotalPrice(guest_id);
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

    public void showAllPayment(){
        try{
            database.showPayment();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
