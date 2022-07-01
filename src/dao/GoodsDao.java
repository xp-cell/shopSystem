package dao;

import pojo.Goods;

import java.util.List;

public interface GoodsDao {
    //获取首页今日热卖商品及售卖量在前十的商品
    List<Goods> getSellingGoods();
    //折扣商品的获取，用折扣字段来获取折扣数据
    List<Goods> getDiscountGoods();
    //获取分类数据，根据所传分类id来获取数据,根据selling来获取分类热卖数据
    List<Goods> getGoodsType(String typeId,String selling);
    //根据id查询商品
    List<Goods> getGoods(int gid);
}
