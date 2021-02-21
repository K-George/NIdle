package discovery.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Commodity implements IJson {
    public int index;
    public String name;
    public String description;
    public String summary;
    public BigDecimal price;
    public String phone_number;
    public int user;
    public Date last_modified;
    public int state;
    public int edit_status;
    public String[] tags;
    public String[] types;

}
