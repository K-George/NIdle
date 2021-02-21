package discovery.others;

import java.sql.SQLException;

@FunctionalInterface
public interface Action<In> {
    void execute(In params) throws SQLException;
}
