package discovery.servlet;

import com.google.gson.Gson;
import discovery.entity.User;
import discovery.system.System;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

@WebServlet(name = "Register",urlPatterns = "/Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        //JsonParser parser = new JsonParser();
        //JsonObject json = parser.parse(reader).getAsJsonObject();
        User user = new Gson().fromJson(reader, User.class);
        System.Register(user);

    }
}
