package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoFactory {

    public static Connection conectar() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(

            "jdbc:mysql://localhost:3306/buscapet?useUnicode=true&characterEncoding=UTF-8&connectionCollation=utf8mb4_unicode_ci&serverTimezone=UTC",

            "root",

            "123456"
        );
    }

    public static void close(Connection con)
            throws Exception {

        if (con != null) {

            con.close();
        }
    }
}
