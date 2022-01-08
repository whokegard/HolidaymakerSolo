public class Menu {

    private String username;
    private String password;
    private int choice;
    private Booking booking = new Booking();
    private Customer customer = new Customer();
    private Destination destination = new Destination();
    private Payment payment = new Payment();
    private Room room = new Room();
    public static final String TEXT_GREEN = "\u001B[32m";
    public static final String TEXT_RESET = "\u001B[0m";

    public Menu(){
        new Database();
        adminLogin();
        menuOptions();
    }

    private void adminLogin(){
        username = Dialog.dialogString("Enter your username: ");
        password = Dialog.dialogString("Enter your password: ");

        if (username.equals("admin") && password.equals("admin")){
            System.out.println(TEXT_GREEN + "Login successful." + TEXT_RESET + "\n");
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
                            destinationMenu();
                            break;
                        case 4:
                            roomMenu();
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
                "(2) Register payments." + "\n" +
                "(3) Show all payments." + "\n" +
                "(4) Main menu." + "\n" +
                "(5) Exit." + "\n", 1, 5);
        while (running){
            try{
                switch(choice){
                    case 1:
                        payment.searchPayment();
                        paymentMenu();
                        break;
                    case 2:
                        payment.registerPayment();
                        paymentMenu();
                        break;
                    case 3:
                        payment.showAllPayment();
                        paymentMenu();
                        break;
                    case 4:
                        menuOptions();
                        break;
                    case 5:
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

    public void destinationMenu(){
        boolean running = true;
        choice = Dialog.dialog("Logged in as Admin." + "\n" +
                "(1) Show all destinations." + "\n" +
                "(2) Order destinations by highest rating." + "\n" +
                "(3) Order destinations by distance to centre." + "\n" +
                "(4) Order destinations by distance to beach." + "\n" +
                "(5) Back to main menu." + "\n" +
                "(6) Exit." + "\n", 1, 6);

        while (running){
            try{
                switch(choice){
                    case 1:
                        destination.searchDestination();
                        destinationMenu();
                        break;
                    case 2:
                        destination.ratingDestination();
                        destinationMenu();
                        break;
                    case 3:
                        destination.centreDestination();
                        destinationMenu();
                        break;
                    case 4:
                        destination.beachDestination();
                        destinationMenu();
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

    public void roomMenu(){
        boolean running = true;
        choice = Dialog.dialog("Logged in as Admin." + "\n" +
                "(1) Show all rooms." + "\n" +
                "(2) Search room by max price." + "\n" +
                "(3) Back to main menu." + "\n" +
                "(4) Exit." + "\n", 1, 4);

        while (running){
            try{
                switch(choice){
                    case 1:
                        room.showAllRooms();
                        roomMenu();
                        break;
                    case 2:
                        room.roomPrice();
                        roomMenu();
                        break;
                    case 3:
                        menuOptions();
                        break;
                    case 4:
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

