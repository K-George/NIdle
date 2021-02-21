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
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.Date;

@WebServlet(name = "CommodityAjax",urlPatterns = "/dataTable/CommodityAjax")
public class CommodityAjax extends HttpServlet {

    private Database db = Database.GetInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");

        JsonObject json = new JsonObject();
        JsonArray array = new JsonArray();
        try{
            db.ExecuteSQLQuery("select * from `commodities`",res->{

                while(res.next()){
                    JsonObject obj = new JsonObject();

                    int index = res.getInt("index");
                    String name = res.getString("name");
                    String description = res.getString("description");
                    String summary = res.getString("summary");
                    BigDecimal price = res.getBigDecimal("price");
                    String phone_number = res.getString("phone_number");
                    int user = res.getInt("user");

                    Date time = res.getTimestamp("last_modified");
                    int state = res.getInt("state");
                    int edit_status = res.getInt("edit_status");
                    String tag = res.getString("tag");
                    String type = res.getString("type");

                    obj.addProperty("index",index);
                    obj.addProperty("name",name);
                    obj.addProperty("description",description);
                    obj.addProperty("summary",summary);
                    obj.addProperty("price",price);
                    obj.addProperty("phone_number",phone_number);
                    obj.addProperty("user",user);
                    obj.addProperty("last_modified",time.toString());
                    obj.addProperty("state",state);
                    obj.addProperty("edit_status",edit_status);
                    obj.addProperty("tag",tag);
                    obj.addProperty("type",type);

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
