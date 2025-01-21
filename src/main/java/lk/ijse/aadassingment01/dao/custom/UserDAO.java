package lk.ijse.aadassingment01.dao.custom;

import lk.ijse.aadassingment01.dao.CrudDAO;
import lk.ijse.aadassingment01.entity.User;

import java.io.IOException;

public interface UserDAO extends CrudDAO<User,String> {
    boolean checkPassword(String username, String password) throws IOException;

}
