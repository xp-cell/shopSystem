package servlet;

import dao.impl.UserDaoImpl;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class UserServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("test/html;charset=UTF-8");
        //创建HttpSession对象
        HttpSession session = req.getSession();
        //获取请求类别参数
        String action = req.getParameter("action");
        //创建PrintWriter对象
        PrintWriter out = resp.getWriter();
        UserDaoImpl dao = new UserDaoImpl();
        if (action.equals("login")){
            String name = req.getParameter("user_name");
            String pass = req.getParameter("user_password");
            User user = dao.userLogin(name, pass);
            if (user!=null){
               out.print("successful");
            }else {
                out.print("fail");
            }
        }else if (action.equals("reg")){
            String name = req.getParameter("user_name");
            String pass = req.getParameter("user_password");
            String number = req.getParameter("user_number");
            User user = new User(1,name,pass,number,10);
            User user1 = dao.checkAllUser(number);
            if (user1==null){
                int i = dao.userReg(user);
                if (i>0){
                    out.print("successful");
                }else {
                    out.print("fail");
                }
            }else {
                out.print("userExist");
            }

        }
    }
}
