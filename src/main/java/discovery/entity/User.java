package discovery.entity;

public class User implements IJson {
    public int index;
    public String account;
    public String name;
    public String password;
    public String student_number;
    public boolean verification;
    public int school;
    public String phone_number;
    public String email;
    public String face_url;

/*    @Override
    public JsonObject toJson(){
        JsonParser parser = new JsonParser();
        JsonObject obj = parser.parse(new Gson().toJson(this)).getAsJsonObject();
        return obj;
    }*/
}
