package discovery.servlet;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import discovery.system.System;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "Login",urlPatterns = "/Login")
public class Login extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO 传入账号和密码， 在这里验证，验证完成后设置Session，失败则直接返回异常界面或主界面
        HttpSession session = request.getSession();


        String contentType = request.getContentType();
        String psw = null;
        String account = null;

        if(contentType == null || contentType.equals("")) {
            response.getWriter().append("Params Error");
            return;
        }
        contentType = contentType.split(";")[0];
        if ("application/x-www-form-urlencoded".equalsIgnoreCase(contentType)) {
            Map<String,Object> params = new HashMap<>();
            // 获取参数
            Map<String, String[]> parameterMap = request.getParameterMap();
            if (parameterMap != null) {
                for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
                    params.put(entry.getKey(), entry.getValue()[0]);
                }
            }
            psw = (String)params.getOrDefault("password","");
            account = (String)params.getOrDefault("account","");
        }
        if ("application/json".equalsIgnoreCase(contentType)) {

            String msg;
            BufferedReader reader = request.getReader();
            /*StringBuilder builder = new StringBuilder();
            while ((msg = reader.readLine())!= null){
                builder.append(msg);
            }
            String str = builder.toString();*/
            JsonParser parser = new JsonParser();
            JsonObject json = parser.parse(reader).getAsJsonObject();
            psw = json.get("password").getAsString();
            account = json.get("account").getAsString();
        }

        if(account==null||psw==null)
        {
            response.getWriter().append("Params Error");
            return;
        }

        int user = System.Login(account,psw);
        if(user == -1){
            response.getWriter().append("用户不存在，或者账号密码输入错误");
            return;
        }
        else{
            session.setAttribute("user_index",user);
            response.getWriter().append("Login Succeeded");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO 测试
        HttpSession session = request.getSession();
        session.setAttribute("user","NIDle");
        session.setAttribute("user_index",1);
        response.getWriter().append("Login correct");
    }
}
