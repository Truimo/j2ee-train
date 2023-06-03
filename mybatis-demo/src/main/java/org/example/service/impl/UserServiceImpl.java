package org.example.service.impl;

import org.example.service.UserService;

public class UserServiceImpl implements UserService {

    @Override
    public void selectUserById(Integer id) {
        System.out.println("UserServiceImpl selectUserById ...");
    }
}
