package test;

import dao.impl.UserDaoImpl;

public class UpdateTest {
    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl();
        int admin = userDao.upUser("超级管理员","123456",3);
        System.out.println(admin);
    }
}
