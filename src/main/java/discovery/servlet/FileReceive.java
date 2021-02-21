package discovery.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "FileReceive",urlPatterns ="/FileReceive")
public class FileReceive extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "C:/NIdle/FileReceive/";

        Part file = request.getPart("file");

        String filePath = path+GetFileName(file);
        //String filePath = path+file.getSubmittedFileName();
        file.write(filePath);

        response.getWriter().append("文件已成功接收");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String x = (String)session.getAttribute("user");

        System.out.println(x);

    }

    private String GetFileName(Part part){
        String header = part.getHeader("Content-Disposition");
        String fileName = header.substring(header.indexOf("filename=\"") + 10,
                header.lastIndexOf("\""));
        return fileName;
    }

}
