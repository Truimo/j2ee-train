package org.example.dao;

import org.apache.ibatis.annotations.Param;
import org.example.entity.User;

import java.util.List;
import java.util.Map;

public interface UserDao {
    public User selectUserById(Integer id);

    //    public User selectUserByIdAndPwd(Integer id, String password);
    public User selectUserByIdAndPwd(@Param("id") Integer id, @Param("password") String password);

    public User selectUserByMap(Map<Object, Object> values);

    public User selectUserByObject(User user);

    public List<User> selectUserByKeyWords(String keyWords);

    public int deleteUserById(@Param("id") Integer id);

    public int updateUserById(User user);

    public int deleteUsersByIds(@Param("ids") List<Integer> ids);
}
