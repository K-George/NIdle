package discovery.entity;


import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public interface IJson {
    default JsonObject toJson(){
        JsonParser parser = new JsonParser();
        JsonObject obj = parser.parse(new Gson().toJson(this)).getAsJsonObject();
        return obj;
    }
}
