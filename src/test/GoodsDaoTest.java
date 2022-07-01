package test;

import com.alibaba.fastjson.JSON;
import dao.impl.GoodsDaoImpl;
import pojo.Goods;

import java.util.List;

public class GoodsDaoTest {
    public static void main(String[] args) {
        GoodsDaoImpl goodsDao = new GoodsDaoImpl();
        //查询今日热卖商品
//        List<Goods> sellingGoods = goodsDao.getSellingGoods();
//        System.out.println(sellingGoods);
        //查询折扣商品
//        List<Goods> discountGoods = goodsDao.getDiscountGoods();
//        String goodsListJSON=JSON.toJSONString(discountGoods);
//        System.out.println(goodsListJSON);
        //通过typeId查询分类商品,通过selling查询分类热卖商品
//        List<Goods> goodsType = goodsDao.getGoodsType("0","selling");
//        System.out.println(goodsType);
        //通过id查询商品
//        List<Goods> goods = goodsDao.getGoods(18);
//        System.out.println(goods);
    }
}
