package lk.ijse.aadassingment01.bo;

import lk.ijse.aadassingment01.bo.custom.impl.*;

public class BOFactory {
    private static BOFactory boFactory;

    private BOFactory() {

    }
    public static BOFactory getBoFactory() {
        return (boFactory == null) ? boFactory = new BOFactory() : boFactory;
    }

    public enum BOTypes {
        USER,CATEGORY,PRODUCT,ORDER,ORDER_DETAIL,CART
    }
    public SuperBO getBO(BOTypes types) {
        switch (types) {
            case USER:
                return new UserBoImpl();
//            case CATEGORY:
//                return new CategoryBoImpl();
//            case PRODUCT:
//                return new ProductBoImpl();
//            case ORDER:
//                return new OrderBoImpl();
//            case ORDER_DETAIL:
//                return new OrderDetailBoImpl();
//            case CART:
//                return new CartBoImpl();
            default:
                return null;
        }
    }
}
