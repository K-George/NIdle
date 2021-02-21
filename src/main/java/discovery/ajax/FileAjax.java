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

@WebServlet(name = "FileAjax",urlPatterns = "/dataTable/FileAjax")
public class FileAjax extends HttpServlet {

    private Database db = Database.GetInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");

        JsonObject json = new JsonObject();
        JsonArray array = new JsonArray();
        try{
            db.ExecuteSQLQuery("select * from `file`",res->{

                while(res.next()){
                    JsonObject obj = new JsonObject();

                    int index = res.getInt("index");
                    String path = res.getString("path");
                    String type = res.getString("type");

                    obj.addProperty("index",index);
                    obj.addProperty("path",path);
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
