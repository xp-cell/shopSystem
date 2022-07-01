package servlet;

import dao.impl.UserDaoImpl;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "loginServlet", urlPatterns = "/loginServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        //创建HttpSession对象
        HttpSession session = req.getSession();
        //获取请求类别参数
        String action = req.getParameter("action");
//        System.out.println(action);
        //创建PrintWriter对象
        PrintWriter out = resp.getWriter();
        UserDaoImpl dao = new UserDaoImpl();
        if (action.equals("login")) {
            String name = req.getParameter("userName");
            String pass = req.getParameter("password");
            User user = dao.userLogin(name, pass);
            List<User> uData = new ArrayList<User>();
            uData.add(user);
            if (user != null) {
                session.setAttribute("uData", uData);
                out.print("successful");
            } else {
                out.print("fail");
            }
        } else if (action.equals("reg")) {
            String name = req.getParameter("nickName");
            String pass = req.getParameter("password");
            String number = req.getParameter("userName");
            User user = new User(1, name, number, pass, 10);
            User user1 = dao.checkAllUser(number);
            if (user1 == null) {
                int i = dao.userReg(user);
                if (i > 0) {
                    out.print("successful");
                } else {
                    out.print("fail");
                }
            } else {
                out.print("userExist");
            }
        }else if (action.equals("userData")) {
            List<User> userData = (List<User>) session.getAttribute("uData");
            String userJson = userData.toString().replace(" ","").replace("{","{\"").replace("}","\"}").replace("=","\":\"")
                    .replace(",","\",\"").replace("'","").replace("User","");
            out.print(userJson);
//            System.out.println(userData);
        }else if (action.equals("exit")) {
            session.setAttribute("uData", "");
            resp.sendRedirect("index.jsp");
        }
    }
}
