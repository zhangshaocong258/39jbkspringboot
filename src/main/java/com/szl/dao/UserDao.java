package com.szl.dao;

import com.szl.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by zsc on 2017/1/15.
 */
@Mapper
public interface UserDao {

    public void insertUser(User user);

    public User selectUserById(int userId);

    public User selectUserByName(String userName);

    public List<User> selectAllUsers();

    public void updateUser(User user);

    public void deleteUser(int Id);

    public void deleteUserByName(String userName);


}
