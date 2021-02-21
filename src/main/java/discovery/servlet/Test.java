package discovery.servlet;

import discovery.function.Email;
import discovery.function.VerificationCode;
import discovery.others.Database;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;


@WebServlet(name="Test",urlPatterns = "/Test")
public class Test extends javax.servlet.http.HttpServlet {

    private Database db;

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        response.getWriter().append("Service at Test");

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String verificationCode =  VerificationCode.GetVerificationCode();
        System.out.println(verificationCode);
        Email.GetInstance().SendMessage("2063217082@qq.com","这是公开测试邮箱的标题","您的验证码是："+verificationCode);
        //db = Database.GetInstance();
        response.getWriter().append("Get Method "+verificationCode);
    }
}
