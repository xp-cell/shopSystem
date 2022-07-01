package dao.impl;

import dao.GoodsDao;
import pojo.Goods;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsDaoImpl implements GoodsDao {
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    @Override
    public List<Goods> getSellingGoods() {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from commodit order by commodit_salenumber desc limit 0,10");
            rs = pst.executeQuery();
            Goods g =null;
            List<Goods> list = new ArrayList<Goods>();
            while (rs.next()){
                g = new Goods(rs.getInt("gid"),
                        rs.getString("commodit_name"),
                        rs.getString("commodit_price"),
                        rs.getString("commodit_vipprice"),
                        rs.getInt("commodit_salenumber"),
                        rs.getInt("commodit_banknumber"),
                        rs.getString("commodit_them"),
                        rs.getString("commodit_img"),
                        rs.getString("commodit_img1"),
                        rs.getString("commodit_img2"),
                        rs.getString("commodit_img3"),
                        rs.getString("commodit_img4"),
                        rs.getInt("commodit_type"),
                        rs.getInt("commodit_discount")
                );
                list.add(g);
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
    public List<Goods> getDiscountGoods() {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from commodit where commodit_discount=1");
            rs = pst.executeQuery();
            Goods g =null;
            List<Goods> list = new ArrayList<Goods>();
            while (rs.next()){
                g = new Goods(rs.getInt("gid"),
                        rs.getString("commodit_name"),
                        rs.getString("commodit_price"),
                        rs.getString("commodit_vipprice"),
                        rs.getInt("commodit_salenumber"),
                        rs.getInt("commodit_banknumber"),
                        rs.getString("commodit_them"),
                        rs.getString("commodit_img"),
                        rs.getString("commodit_img1"),
                        rs.getString("commodit_img2"),
                        rs.getString("commodit_img3"),
                        rs.getString("commodit_img4"),
                        rs.getInt("commodit_type"),
                        rs.getInt("commodit_discount")
                );
                list.add(g);
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
    public List<Goods> getGoodsType(String typeId,String selling) {
        try {
            con = DButil.getCon();
            if (selling.equals("selling")){
                pst = con.prepareStatement("select * from commodit where commodit_type=? order by commodit_salenumber desc limit 0,10");
            }else {
                pst = con.prepareStatement("select * from commodit where commodit_type=?");
            }
            pst.setString(1, typeId);
            rs = pst.executeQuery();
            Goods g =null;
            List<Goods> list = new ArrayList<Goods>();
            while (rs.next()){
                g = new Goods(rs.getInt("gid"),
                        rs.getString("commodit_name"),
                        rs.getString("commodit_price"),
                        rs.getString("commodit_vipprice"),
                        rs.getInt("commodit_salenumber"),
                        rs.getInt("commodit_banknumber"),
                        rs.getString("commodit_them"),
                        rs.getString("commodit_img"),
                        rs.getString("commodit_img1"),
                        rs.getString("commodit_img2"),
                        rs.getString("commodit_img3"),
                        rs.getString("commodit_img4"),
                        rs.getInt("commodit_type"),
                        rs.getInt("commodit_discount")
                );
                list.add(g);
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
    public List<Goods> getGoods(int gid) {
        try {
            con = DButil.getCon();
            pst = con.prepareStatement("select * from commodit where gid=?");
            pst.setInt(1, gid);
            rs = pst.executeQuery();
            Goods g =null;
            List<Goods> list = new ArrayList<Goods>();
            while (rs.next()){
                g = new Goods(rs.getInt("gid"),
                        rs.getString("commodit_name"),
                        rs.getString("commodit_price"),
                        rs.getString("commodit_vipprice"),
                        rs.getInt("commodit_salenumber"),
                        rs.getInt("commodit_banknumber"),
                        rs.getString("commodit_them"),
                        rs.getString("commodit_img"),
                        rs.getString("commodit_img1"),
                        rs.getString("commodit_img2"),
                        rs.getString("commodit_img3"),
                        rs.getString("commodit_img4"),
                        rs.getInt("commodit_type"),
                        rs.getInt("commodit_discount")
                );
                list.add(g);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DButil.dbClose(con,pst,rs);
        }
        return null;
    }
}
