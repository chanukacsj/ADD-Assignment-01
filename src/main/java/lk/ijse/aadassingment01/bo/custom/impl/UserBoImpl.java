package lk.ijse.aadassingment01.bo.custom.impl;

import lk.ijse.aadassingment01.bo.custom.UserBo;
import lk.ijse.aadassingment01.dao.DAOFactory;
import lk.ijse.aadassingment01.dao.custom.UserDAO;
import lk.ijse.aadassingment01.entity.User;
import lk.ijse.aadassingment01.model.UserDTO;

import java.io.IOException;

public class UserBoImpl implements UserBo {

    UserDAO userDAO = (UserDAO) DAOFactory.getInstance().getDAO(DAOFactory.DAOTypes.USER);
    @Override
    public boolean save(UserDTO userDTO) {
        return userDAO.save(new User(userDTO.getEmail(), userDTO.getPassword()));
    }
    @Override
    public boolean checkPassword(String username, String password) throws IOException {
        return userDAO.checkPassword(username, password);
    }
}
