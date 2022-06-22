package test;

import dao.impl.UserDaoImpl;
import pojo.User;

import java.util.List;

/**
 * 查询全部用户
 */
public class SelectTest {
    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl();
        List<User> allUser = userDao.getAllUser();
        System.out.println(allUser);
    }
}
