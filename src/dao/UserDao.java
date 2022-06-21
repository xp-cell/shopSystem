package dao;

import java.util.List;
import pojo.User;

public interface UserDao {
    int userReg(User var1);

    User userLogin(String var1, String var2);

    List<User> getAllUser();

    User checkAllUser(String var1);
}
