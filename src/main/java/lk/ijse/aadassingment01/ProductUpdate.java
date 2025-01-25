package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "ProductUpdateServlet", value = "/product-update")
public class ProductUpdate extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Product update");

        String productIDParam = req.getParameter("update_product_id");
        String name = req.getParameter("update_product_name");
        String description = req.getParameter("update_product_description");
        String priceParam = req.getParameter("update_product_price");
        String qtyParam = req.getParameter("update_product_quantity");
        String categoryIdParam = req.getParameter("update_product_category");
        String imageUrl = req.getParameter("update_product_image");

        try {
            double price = Double.parseDouble(priceParam);
            int qty = Integer.parseInt(qtyParam);
            int categoryId = Integer.parseInt(categoryIdParam);

            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("UPDATE product SET description = ?, image_url = ?, name = ?, price = ?, quantity = ?, category_id = ? WHERE id = ?")) {

                preparedStatement.setString(1, description);
                preparedStatement.setString(2, imageUrl);
                preparedStatement.setString(3, name);
                preparedStatement.setDouble(4, price);
                preparedStatement.setInt(5, qty);
                preparedStatement.setInt(6, categoryId);
                preparedStatement.setInt(7, Integer.parseInt(productIDParam));

                int i = preparedStatement.executeUpdate();

                preparedStatement.close();
                connection.close();

                if (i > 0) {
                    System.out.println("Product updated successfully");
                    resp.sendRedirect("product.jsp");
                } else {
                    System.out.println("Product update failed");
                    resp.sendRedirect("product.jsp");
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
}
