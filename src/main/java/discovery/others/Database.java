package discovery.others;

import java.sql.*;


public class Database {

    Connection conn;

    private static Database _db;

    /**
     * 静态常量，存储数据库密码，账号，名称和地址
     **/
   /* private static String _host = "127.0.0.1:3306";
    private static String _databaseName = "Imagination";
    private static String _user = "admin";
    private static String _password = "admin";*/

    private static String _host = "150.158.152.238:3306";
    private static String _databaseName = "discovery";
    private static String _user = "root";
    private static String _password = "wmdsbbd123.";

    private Database() throws SQLException,ClassNotFoundException {
        //Class.forName("com.mysql.cj.jdbc.Driver");
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(
                "jdbc:mysql://"+_host+"/"+_databaseName+"?characterEncoding=UTF-8&useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true"
                ,_user,_password);
    }

    @Deprecated
    public void ExecuteSQL(String sql) throws SQLException{
        Statement statement = conn.createStatement();
        statement.execute(sql);
        statement.closeOnCompletion();
    }

    public void ExecuteSQL(String sql, Action<ResultSet> func) throws SQLException{
        Statement statement = conn.createStatement();
        statement.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
        ResultSet result = statement.getGeneratedKeys();
        if(func!=null)
            func.execute(result);
        result.close();
        statement.close();
    }

    public int ExecuteSQL(PreparedStatement statement,Action<ResultSet> func)throws SQLException{
        int affect = statement.executeUpdate();
        ResultSet result = statement.getGeneratedKeys();
        if(func!=null)
            func.execute(result);
        result.close();
        statement.close();
        return affect;
    }

    public int ExecuteSQL(PreparedStatement statement)throws SQLException{
        int affect = statement.executeUpdate();
        statement.closeOnCompletion();
        return affect;
    }


    @Deprecated
    public ResultSet ExecuteSQLQuery(String sql) throws SQLException{
        Statement statement = conn.createStatement();
        ResultSet result = statement.executeQuery(sql);
        return result;
    }

    public SqlCreator GetCreator(String sql)throws SQLException{
        return new SqlCreator(conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS));
    }

    public void ExecuteSQLQuery(String sql, Action<ResultSet> func) throws SQLException{
        Statement statement = conn.createStatement();
        ResultSet result = statement.executeQuery(sql);
        if(func!=null)
            func.execute(result);
        result.close();
        statement.close();
    }

    public void ExecuteSQLQuery(PreparedStatement statement,Action<ResultSet> func)throws SQLException{
        ResultSet result = statement.executeQuery();
        if(func!=null)
            func.execute(result);
        result.close();
        statement.close();
    }


    public static Database GetInstance(){
        if(_db==null){
            try{
            _db = new Database();
        }catch (SQLException|ClassNotFoundException e){
                System.out.println("数据库连接异常");
                e.printStackTrace();
            }
        }
        return _db;
    }

    public void Dispose(){
        try{
            conn.close();
        }
        catch (SQLException e){
                e.printStackTrace();
        }
    }


}
