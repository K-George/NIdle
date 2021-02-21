package discovery.servlet;

import discovery.function.Email;
import discovery.function.VerificationCode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Verification",urlPatterns = "/Verification")
public class Verification extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = (String)request.getAttribute("email");
        String code = VerificationCode.GetVerificationCode();
        session.setAttribute("VerificationCode", code);
        Email.GetInstance().SendMessage(email,"NIDle系统注册验证码","您本次的验证码是:"+code+"，请在5分钟内使用。");
        new Thread(()->{
            try{
            Thread.sleep(1000*60*5);
            session.setAttribute("VerificationCode",null);
        }catch (InterruptedException e){e.printStackTrace();}
        }).start();
        /*super.doGet(request,response);
        String email = System.GetEmail(user_index);

        if(email == null) {
            response.sendRedirect("./Login");
            return;
        }
        String verificationCode = VerificationCode.GetVerificationCode();
        VerificationCode.activeCode.put(user_index,verificationCode);
        new Thread(()->{
            try {
                Thread.sleep(1000*60*5);
                VerificationCode.activeCode.remove(user_index);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }).start();

        Email.GetInstance()
                .SendMessage(email,
                        "NIDLe系统验证码",
                        "您本次的验证码是："
                                + verificationCode
                                +"。请在5分钟内完成验证");*/

    }
}
