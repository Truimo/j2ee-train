import org.example.dao.UserDao;
import org.example.entity.Student;
import org.example.entity.User;
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

    @Test
    public void test02() {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
        User user = (User) context.getBean("ul");
        System.out.println(user);
    }

    @Test
    public void test03() {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
        Student stu = (Student) context.getBean("stu");
        System.out.println(stu);
    }
}
