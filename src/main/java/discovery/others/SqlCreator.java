package discovery.others;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class SqlCreator {
    ArrayList<Tuple<Integer, Integer>> integerArgs = new ArrayList<>();
    ArrayList<Tuple<Integer,Double>> doubleArgs = new ArrayList<>();
    ArrayList<Tuple<Integer,String>> stringArgs = new ArrayList<>();
    ArrayList<Tuple<Integer, Date>> dateArgs = new ArrayList<>();
    ArrayList<Tuple<Integer, BigDecimal>> decimalArgs = new ArrayList<>();

    int index = 1;

    private PreparedStatement statement;

    public SqlCreator(PreparedStatement statement){
        this.statement = statement;
    }

    public PreparedStatement GetStatement()throws SQLException {
        for(var i: integerArgs)
            statement.setInt(i.first,i.second);
        for(var i : doubleArgs)
            statement.setDouble(i.first,i.second);
        for(var i: stringArgs)
            statement.setString(i.first,i.second);
        for(var i: dateArgs)
            statement.setDate(i.first,new java.sql.Date(i.second.getTime()));
        for(var i: decimalArgs)
            statement.setBigDecimal(i.first,i.second);
        return statement;
    }

    public void SetArgs(int i,Object values) throws SqlCreatorException{
        if(values instanceof Integer)
            integerArgs.add(new Tuple<>(i,(int)values));
        else if(values instanceof Double)
            doubleArgs.add(new Tuple<>(i,(double)values));
        else if(values instanceof String)
            stringArgs.add(new Tuple<>(i,(String)values));
        else if(values instanceof Date)
            dateArgs.add(new Tuple<>(i,(Date)values));
        else if(values instanceof BigDecimal)
            decimalArgs.add(new Tuple<>(i,(BigDecimal)values));
        else
            throw new SqlCreatorException();
    }

    public void SetArgs(Object values) throws SqlCreatorException{
        SetArgs(index,values);
        ++index;
    }

    public void SetArgs(Iterable<Object> values)throws SqlCreatorException{
        for(var i:values)
            SetArgs(i);
    }

    public class SqlCreatorException extends Exception{

    }
}
