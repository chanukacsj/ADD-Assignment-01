package lk.ijse.aadassingment01.dao.custom.impl;

import lk.ijse.aadassingment01.dao.custom.OrderDAO;
import lk.ijse.aadassingment01.entity.Order;

import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    @Override
    public boolean save(Order entity) {

        return false;
    }

    @Override
    public void update(Order entity) {

    }

    @Override
    public void delete(String s) {

    }

    @Override
    public Order findById(String s) {
        return null;
    }

    @Override
    public List<Order> getAll() {
        return null;
    }
}
