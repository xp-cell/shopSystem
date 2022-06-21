package util;
import org.apache.commons.dbcp.BasicDataSource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
public class DButil {
    private static String driver;
    private static String url;
    private static String user;
    private static String pass;
    private static BasicDataSource ds;
    static {
        try {
            Properties ps = new Properties();
            ps.load(DButil.class.getClassLoader().getResourceAsStream("db.properties"));
            driver = ps.getProperty("driver");
            url = ps.getProperty("url");
            user = ps.getProperty("user");
            pass = ps.getProperty("pass");

            ds = new BasicDataSource();
            ds.setDriverClassName(driver);
            ds.setUrl(url);
            ds.setUsername(user);
            ds.setPassword(pass);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static Connection getCon() throws SQLException { //1.加载驱动 2.获取连接的方法
        return ds.getConnection();
    }
    public static void dbClose(Connection con, PreparedStatement pst, ResultSet rs) { //6.关闭资源
        if (con != null) {
            try {
                if (!con.isClosed()) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (pst != null) {
            try {
                pst.close();
            } catch (SQLException t) {
                t.printStackTrace();
            }
        }
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException t) {
                t.printStackTrace();
            }
        }
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(DButil.getCon().getClass().getName());
    }
}
