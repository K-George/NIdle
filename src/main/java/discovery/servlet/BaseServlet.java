package discovery.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "BaseServlet")
public abstract class BaseServlet extends HttpServlet {
    protected int user_index;
    protected HttpSession session;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
        session = request.getSession();
        user_index = (int)session.getAttribute("user_index");
        }catch (NullPointerException e){
            response.sendRedirect("./Login");
            return;
        }
    }
}
