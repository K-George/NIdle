package discovery.system;

import discovery.entity.Browse;
import discovery.entity.Commodity;
import discovery.entity.User;
import discovery.others.Database;
import discovery.others.SqlCreator;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class System {

    private static Database db = Database.GetInstance();
    public static int Login(String account, String password){

        try{
            var creator = db.GetCreator(
                    "select * from `user` where `account` = ? and `password` = ?");
            creator.SetArgs(account);
            creator.SetArgs(password);
            final int[] index = new int[1];
            db.ExecuteSQLQuery(creator.GetStatement(),
                    result->{
                result.next();
                index[0] = result.getInt("index");
            });

            return index[0];

        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
        }
        return -1;
    }
    public static int Register(User user) {
        try{
            var creator = db.GetCreator("insert into `user` " +
                    "set `account` = ?, " +
                    "`password` = ?, " +
                    "`name` = ?, " +
                    "`student_number` = ?, " +
                    "`verification` = ?, " +
                    "`school` = ?, " +
                    "`phone_number` = ?, " +
                    "`email` = ?," +
                    "`face_url` = ?");
            creator.SetArgs(user.account);
            creator.SetArgs(user.password);
            creator.SetArgs(user.name);
            creator.SetArgs(user.student_number);
            creator.SetArgs(user.verification);
            creator.SetArgs(user.school);
            creator.SetArgs(user.phone_number);
            creator.SetArgs(user.email);
            creator.SetArgs(user.face_url);

            final int[] index = new int[1];
            db.ExecuteSQL(creator.GetStatement(),result->{
                result.next();
                index[0] = result.getInt("index");
            });

            return index[0];
        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return -1;
        }
    }

    public static boolean Consume(int user,Commodity commodity){
        //TODO
        try
        {
            var creator = db.GetCreator("insert into `deal` " +
                    "set `user` = ?," +
                    "`commodity` = ?," +
                    "finish_time = ?," +
                    "state = ?");
            creator.SetArgs(new Object[]{user,commodity.index,new Date(),1});
            db.ExecuteSQL(creator.GetStatement());
            return true;
        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean CreateCommodity(Commodity commodity){
        try{
            var creator = db.GetCreator(
                    "insert into `commodity`" +
                            "set name = ?," +
                            "description = ?," +
                            "summary = ?," +
                            "price = ?," +
                            "phone_number = ?," +
                            "user = ?," +
                            "last_modified = ?," +
                            "state = ?," +
                            "edit_status = ?");
            creator.SetArgs(
                    new Object[]{
                            commodity.name,
                            commodity.description,
                            commodity.summary,
                            commodity.price,
                            commodity.phone_number,
                            commodity.user,
                            commodity.last_modified,
                            commodity.state,
                            commodity.edit_status
                    });
            db.ExecuteSQL(creator.GetStatement());
            return true;
        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return false;
        }
    }
    public static boolean DeleteCommodity(Commodity commodity){
        //TODO
        return false;
    }
    public static boolean ModifyCommodity(Commodity commodity){
        //TODO
        return false;
    }

    public static Iterable<Commodity> GetCommodities(int user){

        ArrayList<Commodity> list = new ArrayList<>();
        try{
            var creator = db.GetCreator("select * from commodities where `index` = ?");
            creator.SetArgs(user);
            db.ExecuteSQLQuery(creator.GetStatement(),result->{
                while(result.next()){
                    Commodity commodity = new Commodity();
                    commodity.index = result.getInt("index");
                    commodity.edit_status = result.getInt("edit_status");
                    commodity.state = result.getInt("state");
                    commodity.last_modified = result.getDate("last_modified");
                    commodity.user = result.getInt("user");
                    commodity.price = result.getBigDecimal("price");
                    commodity.summary = result.getString("summary");
                    commodity.description = result.getString("description");
                    commodity.name = result.getString("name");
                    commodity.tags = result.getString("tag").split(",");
                    commodity.types = result.getString("type").split(",");
                    commodity.phone_number = result.getString("phone_number");
                    list.add(commodity);
                }
            });

        return list;
        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return null;
        }

    }
    public static int FindUser(User user){
        //TODO
        return -1;
    }

    public static User GetUserInfo(int index){
        try{
            User u = new User();
            var creator = db.GetCreator("select * from `user` where `index` = ?");
            creator.SetArgs(index);
            db.ExecuteSQLQuery(creator.GetStatement(),result->{
                result.next();
                u.account = result.getString("account");
                u.email = result.getString("email");
                u.face_url = result.getString("face_url");
                u.name = result.getString("name");
                u.password = result.getString("password");
                u.phone_number = result.getString("phone_number");
                u.school = result.getInt("school");
                u.student_number = result.getString("student_number");
                u.verification = result.getBoolean("verification");
                u.index = result.getInt("index");
            });
            return u;

        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return null;
        }

    }

    public static boolean CreateUser(User user){
        //TODO
        return false;
    }
    public static boolean DeleteUser(User user){
        //TODO
        return false;
    }
    public static boolean ModifyUser(User user){
        //TODO
        return false;
    }

    public static boolean SetBrowse(Browse browse){
        try{
         var creator = db.GetCreator(
                 "insert into `browse`(`user`,`commodity`,`time`)" +
                         "values(?,?,?)" +
                         "on duplicate key " +
                         "update `time` = values(`time`)");
         creator.SetArgs(new Object[]{browse.user,browse.commodity,new Date()});
         db.ExecuteSQL(creator.GetStatement());
         return true;

        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return false;
        }
    }
    public static Iterable<Browse>  GetBrowse(int user){
        try {
            ArrayList<Browse> list = new ArrayList<>();
            var creator = db.GetCreator(
                    "select * from `browse`" +
                            "where user = ?");
            creator.SetArgs(user);
            db.ExecuteSQLQuery(creator.GetStatement(),result->{
                while(result.next()){
                    Browse browse = new Browse();
                    browse.commodity = result.getInt("commodity");
                    browse.user = result.getInt("user");
                    browse.time = result.getDate("time");
                    list.add(browse);
                }
            });
            return list;

        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return null;
        }
    }

    public static void GetDeals(User user){
        //TODO
    }

    public static String GetEmail(int index){
        try{
            String[] email = new String[1];
            var creator = db.GetCreator("select * from `user` where `index` = ?");
            creator.SetArgs(index);
            db.ExecuteSQLQuery(creator.GetStatement(),result->{
                result.next();
                email[0] = result.getString("email");
            });
            return email[0];
        }catch (SQLException| SqlCreator.SqlCreatorException e){
            e.printStackTrace();
            return null;
        }
    }

}
