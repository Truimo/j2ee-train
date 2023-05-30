import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class MyJdbcDemo01 {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // 1. 导入驱动jar包
        // 2. 注册驱动
        Class.forName("com.mysql.jdbc.Driver");
        // 3. 获取数据库连接对象
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        // 4. 定义sql语句
        String sql = "UPDATE user SET `age` = 50 WHERE `id` = 2";
        // 5. 获取执行sql的对象 Statement
        Statement statement = connection.createStatement();
        // 6. 执行sql
        int count = statement.executeUpdate(sql);
        // 7. 处理结果
        System.out.println(count);
        // 8. 释放资源 (先开后关)
        statement.close();
        connection.close();
    }
}
