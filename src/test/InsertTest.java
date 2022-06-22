package test;

import dao.impl.UserDaoImpl;
import pojo.User;

/**
 *
 * 通过注册增加用户
 */
public class InsertTest {
    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl();
        User user = new User(1,"超级管理员","admin","11111",10);
        int i = userDao.userReg(user);
        System.out.println(i);
    }
}
