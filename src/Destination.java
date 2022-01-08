public class Destination {
    private Database database = new Database();

    public void searchDestination(){
        try{
            database.showDestination();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void ratingDestination(){
        try{
            database.showRatingDestination();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void centreDestination(){
        try{
            database.showCentreDestination();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void beachDestination(){
        try{
            database.showBeachDestination();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

}
