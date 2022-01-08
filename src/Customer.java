public class Customer {
    private Database database = new Database();

    public void searchCustomer(){
        try{
            String firstName = Dialog.dialogString("Customer first name: ");
            String lastName = Dialog.dialogString("Customer last name: ");
            if (!database.searchCustomer(firstName, lastName)) {
                System.out.println("Couldn't find a customer named " + firstName + " " + lastName + ".");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addCustomer() {
        try {
            String first_name = Dialog.dialogString("First name?");
            String last_name = Dialog.dialogString("Last name?");
            String email = Dialog.dialogString("Email?");
            String phonenumber = Dialog.dialogString("Phone number?");
            String birthdate = Dialog.dialogString("Birthdate? (YYYY-MM-DD))");
            database.newCustomer(first_name, last_name, email, phonenumber, birthdate);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCustomer() {
        try {
            int id = Dialog.dialog("Customer ID?");
            database.removeCustomer(id);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void updateCustomer() {
        try {
            int id = Dialog.dialog("Customer ID?");
            String first_name = Dialog.dialogString("First name?");
            String last_name = Dialog.dialogString("Last name?");
            String email = Dialog.dialogString("Email?");
            String phonenumber = Dialog.dialogString("Phone number?");
            String birthdate = Dialog.dialogString("Birthdate? (YYYY-MM-DD))");
            database.changeCustomer(id, first_name, last_name, email, phonenumber, birthdate);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
}
