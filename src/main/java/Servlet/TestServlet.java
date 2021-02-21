package Servlet;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.*;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "TestServlet", value = "/TestServlet")
public class TestServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // 获取列数

    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        JSONArray array = new JSONArray();


        // 通过异常处理操作
        try{
            // 加载mysql数据库驱动
            Class.forName("com.mysql.jdbc.Driver");
            // 连接到数据库
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
            // 创建连接状态
            System.out.println("连接成功");
            stmt = conn.createStatement();
            // 对数据库进行操作
            rs = stmt.executeQuery("select * from info");
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            System.out.println(columnCount);
            // 输出html信息
            //out.println("<html><head><title>读取数据库信息</title></head><body></body></html>");
            // 利用while循环将数据库中的信息输出
            while(rs.next()) {

                System.out.println(rs.getString("url") );
                System.out.println(rs.getString("name") );
                System.out.println(rs.getString("price") );
                JSONObject jsonObj = new JSONObject();

                // 遍历每一列
                for (int i = 2; i <= columnCount; i++) {
                    String columnName =metaData.getColumnLabel(i);
                    System.out.println(columnName);
                    String value = rs.getString(columnName);
                    System.out.println(value);
                    jsonObj.put(columnName, value);
                }
                array.put(jsonObj);
                System.out.println(array);
            }

            out.println(array.toString());
        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            // 关闭数据源
        }
    }

    public static void main(String[] args){
        TestServlet c=new TestServlet();

    }
}
