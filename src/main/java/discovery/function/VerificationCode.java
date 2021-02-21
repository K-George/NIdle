package discovery.function;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;


public class VerificationCode {

    private final static Random random = new Random();
    private final static String charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    private final static char[] chars = charset.toCharArray();
    private final static int length = chars.length;

    public final static Map<Integer,String> activeCode = Collections.synchronizedMap(new HashMap<>());

    public static String GetVerificationCode(){
        int number = random.nextInt(3)+4;
        StringBuilder builder = new StringBuilder();
        for(int i =0;i<number;++i){
            builder.append(chars[random.nextInt(length)]);
        }
        return builder.toString();
    }

    public static boolean Verify(int user,String code){
        String verificationCode = activeCode.get(user);
        if(code.equals(verificationCode))
            return true;
        else
            return false;

    }

}
