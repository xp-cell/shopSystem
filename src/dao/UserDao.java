package dao;

import java.util.List;
import pojo.User;

public interface UserDao {
    //注册
    int userReg(User var1);
    //登录
    User userLogin(String var1, String var2);
    //获取全部用户
    List<User> getAllUser();
    //检测用户是否存在
    User checkAllUser(String var1);
    //通过id删除用户信息
    int deleteUser(int id);
    //修改用户信息
    int upUser(String name,String pass,int id);
}
