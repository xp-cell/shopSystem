package test;
import dao.impl.UserDaoImpl;
import pojo.User;


public class UserDaoTest {
    public static void main(String[] args) {
        UserDaoImpl userDaoImpl = new UserDaoImpl();
        //注册
//        User user = new User(1,"超级管理员","admin","11111",10);
//        int i = userDaoImpl.userReg(user);
//        System.out.println(i);
        //登录
//        User admin = userDaoImpl.userLogin("admin", "11111");
//        System.out.println(admin);
        //查询所有用户
//        List<User> allUser = userDaoImpl.getAllUser();
//        System.out.println(allUser);
        //检测用户是否存在
        User user= userDaoImpl.checkAllUser("admin");
        System.out.println(user);
    }
}
