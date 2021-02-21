package discovery.ajax;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import discovery.others.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "TestAjax",urlPatterns = "/dataTable/TestAjax")
public class TestAjax extends HttpServlet {

    private static Database db = Database.GetInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject json = new JsonObject();
        JsonArray array = new JsonArray();
        try{
        Database.GetInstance().ExecuteSQLQuery("select * from `user`", result->{
            while(result.next()){
                JsonObject obj = new JsonObject();
                String account = result.getString("account");
                String name = result.getString("name");
                String student_number = result.getString("student_number");
                boolean verification = result.getBoolean("verification");
                int school = result.getInt("school");
                String phone_number = result.getString("phone_number");
                

                //String password = result.getString("password");
                int index = result.getInt("index");
                obj.addProperty("account", account);
                //obj.addProperty("password", password);
                obj.addProperty("index", index);
                array.add(obj);
            }
        });
        json.add("data",array);
        response.getWriter().append(json.toString());
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
