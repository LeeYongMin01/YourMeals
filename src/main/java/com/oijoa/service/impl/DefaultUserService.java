package com.oijoa.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Service;
import com.oijoa.dao.UserDao;
import com.oijoa.domain.User;
import com.oijoa.service.UserService;

@Service
public class DefaultUserService implements UserService {

  UserDao userDao;

  public DefaultUserService(UserDao userDao) {
    this.userDao = userDao;
  }

  @Override
  public int delete(int no) throws Exception {
    return userDao.delete(no);
  }

  @Override
  public List<User> list() throws Exception {
    return userDao.findAll(null);
  }

  @Override
  public List<User> list(String keyword) throws Exception {
    return userDao.findAll(keyword);
  }

  @Override
  public int update(User user) throws Exception {
    return userDao.update(user);
  }

  @Override
  public User get(int no) throws Exception {
    return userDao.findByNo(no);
  }

  @Override
  public User get(String email, String password) throws Exception {
    HashMap<String, Object> map = new HashMap<>();
    map.put("email", email);
    map.put("password", password);
    return userDao.findByEmailPassword(map);
  }

  @Override
  public int add(User user) throws Exception {
    return userDao.insert(user);
  }
}