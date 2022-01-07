public class Menu {

    private String username;
    private String password;
    private int choice;
    private Booking booking = new Booking();
    private Customer customer = new Customer();
    private Destination destination = new Destination();
    private Payment payment = new Payment();

    public Menu(){
        new Database();
        adminLogin();
        menuOptions();
    }

    private void adminLogin(){
        username = Dialog.dialogString("Enter your username: ");
        password = Dialog.dialogString("Enter your password: ");

        if (username.equals("admin") && password.equals("admin")){
            System.out.println("Login successful." + "\n");
        }
        else{
            System.out.println("Username or password is invalid, try again." + "\n");
            adminLogin();
        }
    }
    private void menuOptions(){
        boolean running = true;
        choice = Dialog.dialog("Logged in as Admin." + "\n" +
                "(1) Booking menu." + "\n" +
                "(2) Customer menu." + "\n" +
                "(3) Destination menu." + "\n" +
                "(4) Room menu." + "\n" +
                "(5) Payment menu." + "\n" +
                "(6) Exit." + "\n", 1, 6);

            while (running){
                try{
                    switch(choice){
                        case 1:
                            bookingMenu();
                            break;
                        case 2:
                            customerMenu();
                            break;
                        case 3:
                            //destinationMenu();
                            break;
                        case 4:
                            //roomMenu();
                            break;
                        case 5:
                            paymentMenu();
                            break;
                        case 6:
                            running = false;
                            System.out.println("Application is closing...");
                            System.exit(0);
                            break;
                        default:
                            break;
                    }

                } catch (Exception e){
                    e.printStackTrace();
                }

        }

    }

    public void bookingMenu(){
        boolean running = true;
        choice = Dialog.dialog("Logged in as Admin." + "\n" +
                "(1) Add new booking." + "\n" +
                "(2) Cancel booking." + "\n" +
                "(3) Update booking." + "\n" +
                "(4) Search booking." + "\n" +
                "(5) Back to main menu." + "\n" +
                "(6) Exit." + "\n", 1, 6);

        while (running){
            try{
                switch(choice){
                    case 1:
                        booking.addBooking();
                        bookingMenu();
                        break;
                    case 2:
                        booking.cancelBooking();
                        bookingMenu();
                        break;
                    case 3:
                        booking.updateBooking();
                        bookingMenu();
                        break;
                    case 4:
                        booking.searchBooking();
                        bookingMenu();
                        break;
                    case 5:
                        menuOptions();
                        break;
                    case 6:
                        running = false;
                        System.out.println("Application is closing...");
                        System.exit(0);
                        break;
                    default:
                        break;
                }

            } catch (Exception e){
                e.printStackTrace();
            }

        }

    }

    public void customerMenu(){
        boolean running = true;
        choice = Dialog.dialog("Logged in as Admin." + "\n" +
                "(1) Add new customer." + "\n" +
                "(2) Delete customer." + "\n" +
                "(3) Update customer." + "\n" +
                "(4) Search customer." + "\n" +
                "(5) Back to main menu." + "\n" +
                "(6) Exit." + "\n", 1, 6);

        while (running){
            try{
                switch(choice){
                    case 1:
                        customer.addCustomer();
                        customerMenu();
                        break;
                    case 2:
                        customer.deleteCustomer();
                        customerMenu();
                        break;
                    case 3:
                        customer.updateCustomer();
                        customerMenu();
                        break;
                    case 4:
                        customer.searchCustomer();
                        customerMenu();
                        break;
                    case 5:
                        menuOptions();
                        break;
                    case 6:
                        running = false;
                        System.out.println("Application is closing...");
                        System.exit(0);
                        break;
                    default:
                        break;
                }

            } catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    private void paymentMenu(){
        boolean running = true;
        choice = Dialog.dialog("Logged in as Admin." + "\n" +
                "(1) Search payment." + "\n" +
                "(2) Main menu." + "\n" +
                "(3) Exit." + "\n", 1, 3);
        while (running){
            try{
                switch(choice){
                    case 1:
                        payment.searchPayment();
                        paymentMenu();
                        break;
                    case 2:
                        menuOptions();
                        break;
                    case 3:
                        running = false;
                        System.out.println("Application is closing...");
                        System.exit(0);
                        break;
                    default:
                        break;
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}

