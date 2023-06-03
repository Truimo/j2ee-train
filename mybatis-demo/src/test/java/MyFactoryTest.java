import org.example.dao.UserDao;
import org.example.factory.MyFactory;
import org.example.service.UserService;
import org.junit.Test;

import java.io.IOException;

public class MyFactoryTest {
    @Test
    public void test01() throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        MyFactory myFactory = new MyFactory("/bean.properties");
        // UserDao userDao = (UserDao) myFactory.getBean("userDao");
        UserService userService = (UserService) myFactory.getBean("userService");
        userService.selectUserById(1);
    }
}
