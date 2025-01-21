package lk.ijse.aadassingment01.dao;

import lk.ijse.aadassingment01.dao.custom.impl.*;

public class DAOFactory {
    private static DAOFactory factory;

    private DAOFactory() {
    }

    public static DAOFactory getInstance() {
        return factory == null ? new DAOFactory() : factory;
    }

    public enum DAOTypes {
        USER, CATEGORY, PRODUCT, ORDER, ORDER_DETAIL, CART
    }

    public SuperDAO getDAO(DAOTypes types) {
        switch (types) {
            case USER:
                return new UserDAOImpl();
            case CATEGORY:
                return new CategoryDAOImpl();
            case PRODUCT:
                return new ProductDAOImpl();
            case ORDER:
                return new OrderDAOImpl();
            case ORDER_DETAIL:
                return new OrderDetailDAOImpl();
            case CART:
                return new CartDAOImpl();
            default:
                return null;
        }
    }
}
