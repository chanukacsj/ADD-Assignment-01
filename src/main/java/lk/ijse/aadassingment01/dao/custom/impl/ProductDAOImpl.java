package lk.ijse.aadassingment01.dao.custom.impl;

import lk.ijse.aadassingment01.dao.custom.ProductDAO;
import lk.ijse.aadassingment01.entity.Product;

import java.util.List;

public class ProductDAOImpl implements ProductDAO {
    @Override
    public boolean save(Product entity) {

        return false;
    }

    @Override
    public void update(Product entity) {

    }

    @Override
    public void delete(String s) {

    }

    @Override
    public Product findById(String s) {
        return null;
    }

    @Override
    public List<Product> getAll() {
        return null;
    }
}
