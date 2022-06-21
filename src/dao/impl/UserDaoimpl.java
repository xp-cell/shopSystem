package dao.impl;

import dao.UserDao;
import pojo.User;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoimpl implements UserDao{
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    @Override
    public int userReg(User u) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("INSERT into user VALUES (null,?,?,?,10)");
            pst.setString(1,u.getUser_name());
            pst.setString(2,u.getUser_number());
            pst.setString(3,u.getUser_password());
            int i = pst.executeUpdate();
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DButil.dbClose(con,pst,rs);
        }
        return 0;
    }

    @Override
    public User userLogin(String user_number, String user_password) {
        try {
            con = DButil.getCon();
            System.out.println(con+"======================");
            pst = con.prepareStatement("SELECT * FROM user where user_number=? and user_password=?");
            pst.setString(1,user_number);
            pst.setString(2,user_password);
            rs = pst.executeQuery();
            while (rs.next()){
                return new User(rs.getInt("uid"),
                        rs.getString("user_name"),
                        rs.getString("user_number"),
                        rs.getString("user_password"),
                        rs.getInt("user_integral")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DButil.dbClose(con,pst,rs);
        }
        return null;
    }

    @Override
    public List<User> getAllUser() {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from user");
            rs = pst.executeQuery();
            User u =null;
            List<User> list = new ArrayList<User>();
            while (rs.next()){
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
        }finally {
            DButil.dbClose(con,pst,rs);
        }
        return null;
    }

    @Override
    public User checkAllUser(String name) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from user where user_number=?");
            pst.setObject(1,name);
            rs = pst.executeQuery();
            while (rs.next()){
                return new User(rs.getInt("uid"),
                        rs.getString("user_name"),
                        rs.getString("user_number"),
                        rs.getString("user_password"),
                        rs.getInt("user_integral"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DButil.dbClose(con,pst,rs);
        }
        return null;
    }
}
