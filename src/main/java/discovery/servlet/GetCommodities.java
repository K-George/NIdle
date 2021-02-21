package discovery.servlet;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import discovery.entity.Commodity;
import discovery.others.Database;
import discovery.system.System;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GetCommodities",urlPatterns = "/GetCommodities")
public class GetCommodities extends BaseServlet {

    Database db = Database.GetInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request,response);
        Iterable<Commodity> list =  System.GetCommodities(user_index);
            JsonArray array= new JsonArray();
            for(var i : list){
                JsonObject json = i.toJson();
                array.add(json);
            }
            response.getWriter().append(array.toString());
    }
}
