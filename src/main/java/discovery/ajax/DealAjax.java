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
import java.util.Date;

@WebServlet(name = "DealAjax",urlPatterns = "/dataTable/DealAjax")
public class DealAjax extends HttpServlet {

    private static Database db = Database.GetInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");

        JsonObject json = new JsonObject();
        JsonArray array = new JsonArray();
        try{
        db.ExecuteSQLQuery("select * from `deal`",res->{

            while(res.next()){
                JsonObject obj = new JsonObject();

                int user = res.getInt("user");
                int commodity = res.getInt("commodity");
                Date finish_time = res.getTimestamp("finish_time");
                int state = res.getInt("state");

                obj.addProperty("user",user);
                obj.addProperty("commodity",commodity);
                obj.addProperty("finish_time",finish_time.toString());
                obj.addProperty("state",state);

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
