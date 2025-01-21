package lk.ijse.aadassingment01.dao.custom.impl;

import lk.ijse.aadassingment01.dao.custom.UserDAO;
import lk.ijse.aadassingment01.entity.User;
import lk.ijse.aadassingment01.config.SessionFactoryConfig;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;
import java.util.List;

public class UserDAOImpl implements UserDAO {
    @Override
    public boolean save(User entity) {
        Session session = SessionFactoryConfig.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        session.save(entity);
        transaction.commit();
        session.close();
        return true;
    }


    @Override
    public void update(User entity) {

    }

    @Override
    public void delete(String s) {

    }

    @Override
    public User findById(String s) {
        return null;
    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public boolean checkPassword(String username, String password){
        Session session = SessionFactoryConfig.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        User user = session.get(User.class, username);
        transaction.commit();
        session.close();
        return user.getPassword().equals(password);
    }
}
