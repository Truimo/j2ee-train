import org.example.dao.UserDao;
import org.example.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Spring01Test {
    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
        UserDao userDao = (UserDao) context.getBean("userDao");
        UserService userService = (UserService) context.getBean("userService");
        userService.selectUserById(1);
    }
}
