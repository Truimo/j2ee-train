package org.example.service.impl;

import org.example.entity.User;
import org.example.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Override
    public List<User> selectUser() {
        System.out.println("UserServiceImpl selectUser...");
        return null;
    }

    @Override
    public Integer deleteUserById(Integer id) {
        return null;
    }

    @Override
    public Integer updateUserById(User user) {
        return null;
    }

    @Override
    public Integer insertUserById(User user) {
        return null;
    }
}
