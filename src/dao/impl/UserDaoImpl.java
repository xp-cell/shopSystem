package dao.impl;

import dao.UserDao;
import pojo.User;
import sun.security.pkcs11.Secmod;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    //用户注册的实现
    @Override
    public int userReg(User u) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("INSERT into user VALUES (null,?,?,?,10)");
            pst.setString(1, u.getUser_name());
            pst.setString(2, u.getUser_number());
            pst.setString(3, u.getUser_password());
            int i = pst.executeUpdate();
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.dbClose(con, pst, rs);
        }
        return 0;
    }

    //用户登录
    @Override
    public User userLogin(String user_number, String user_password) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("SELECT * FROM user where user_number=? and user_password=?");
            pst.setString(1, user_number);
            pst.setString(2, user_password);
            rs = pst.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("uid"),
                        rs.getString("user_name"),
                        rs.getString("user_number"),
                        rs.getString("user_password"),
                        rs.getInt("user_integral")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.dbClose(con, pst, rs);
        }
        return null;
    }

    //获取所有用户
    @Override
    public List<User> getAllUser() {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from user");
            rs = pst.executeQuery();
            User u = null;
            List<User> list = new ArrayList<User>();
            while (rs.next()) {
                u = new User(rs.getInt("uid"),
                        rs.getString("user_name"),
                        rs.getString("user_password"),
                        rs.getString("user_number"),
                        rs.getInt("user_integral"));
                list.add(u);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.dbClose(con, pst, rs);
        }
        return null;
    }

    //检查用户注册账号是否已存在
    @Override
    public User checkAllUser(String name) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from user where user_number=?");
            pst.setObject(1, name);
            rs = pst.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("uid"),
                        rs.getString("user_name"),
                        rs.getString("user_number"),
                        rs.getString("user_password"),
                        rs.getInt("user_integral"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.dbClose(con, pst, rs);
        }
        return null;
    }
    @Override
    public int deleteUser(int id) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("delete from user where uid = ?");
            pst.setObject(1, id);
            int i = pst.executeUpdate();
            if (i > 0) {
                return 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.dbClose(con, pst, rs);
        }

        return 0;
    }

    //用户修改
    @Override
    public int upUser(String name, String pass, int id) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("UPDATE user set user_name=? , user_password=? where uid=?");
            pst.setObject(1, name);
            pst.setObject(2, pass);
            pst.setObject(3, id);
            int i = pst.executeUpdate();
            if (i > 0) {
                return 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
}
