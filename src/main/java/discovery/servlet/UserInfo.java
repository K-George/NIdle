package discovery.servlet;

import com.google.gson.JsonObject;
import discovery.entity.User;
import discovery.system.System;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserInfo", urlPatterns = "/UserInfo")
public class UserInfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try{
            int user = (int)session.getAttribute("user_index");
            User u = System.GetUserInfo(user);
            if(u == null)
            {
                //TODO
                response.sendRedirect("./Login");
                return;
            }
            JsonObject json =  u.toJson();
            response.getWriter().append(json.toString());
            return;

        }catch (NullPointerException e){
            response.sendRedirect("./Login");
        }
    }
}
