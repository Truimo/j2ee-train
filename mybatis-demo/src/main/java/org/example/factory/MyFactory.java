package org.example.factory;

import java.io.IOException;
import java.util.Properties;

public class MyFactory {
    private Properties properties = new Properties();

    MyFactory() {

    }

    public MyFactory(String config) throws IOException {
        properties.load(MyFactory.class.getResourceAsStream(config));
    }

    public Object getBean(String beanName) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        String classPath = properties.getProperty(beanName);
        if (null != classPath) {
            Class clazz = null;
            clazz = Class.forName(classPath);
            return clazz.newInstance();
        }
        return null;
    }
}
