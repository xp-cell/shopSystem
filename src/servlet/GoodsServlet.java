package servlet;

import com.alibaba.fastjson.JSON;
import dao.impl.GoodsDaoImpl;
import pojo.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
@WebServlet(name = "goodsServlet", urlPatterns = "/goodsServlet")
public class GoodsServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("test/html;charset=UTF-8");
        //创建HttpSession对象
        HttpSession session = req.getSession();
        //获取请求类别参数
        String action = req.getParameter("action");
//        System.out.println(action);
        //创建PrintWriter对象
        PrintWriter out = resp.getWriter();
        GoodsDaoImpl goodsDao = new GoodsDaoImpl();
        if (action.equals("selling")){
            List<Goods> sellingGoods = goodsDao.getSellingGoods();
            String sellingGoodsJson= JSON.toJSONString(sellingGoods);
            out.print(sellingGoodsJson);
            List<Goods> discountGoods = goodsDao.getDiscountGoods();
            String discountGoodsJson= JSON.toJSONString(discountGoods);
            out.print(discountGoodsJson);
        }else if (action.equals("goodsType")){
            String typeId = req.getParameter("typeId");
            String selling = req.getParameter("selling");
            List<Goods> goodsType = goodsDao.getGoodsType(typeId,selling);
            String goodsTypeJson= JSON.toJSONString(goodsType);
            out.print(goodsTypeJson);
        }else if (action.equals("goods")){
            int gid = Integer.parseInt(req.getParameter("gid"));
            List<Goods> goods = goodsDao.getGoods(gid);
            String goodsJson= JSON.toJSONString(goods);
            out.print(goodsJson);
        }
    }
}
