package org.example.dao;

import org.example.entity.User;

public interface UserDao {
    public User selectUserById(Integer id);
}
