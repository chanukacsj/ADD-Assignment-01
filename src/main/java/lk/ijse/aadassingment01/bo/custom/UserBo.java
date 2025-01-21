package lk.ijse.aadassingment01.bo.custom;

import lk.ijse.aadassingment01.bo.SuperBO;
import lk.ijse.aadassingment01.model.UserDTO;

import java.io.IOException;

public interface UserBo extends SuperBO {
    boolean save(UserDTO userDTO);
    boolean checkPassword(String username, String password) throws IOException;

}
