package org.example.service;

import org.example.entity.User;

import java.util.List;

public interface UserService {
    public List<User> selectUser();
    public Integer deleteUserById(Integer id);
    public Integer updateUserById(User user);
    public Integer insertUserById(User user);
}
