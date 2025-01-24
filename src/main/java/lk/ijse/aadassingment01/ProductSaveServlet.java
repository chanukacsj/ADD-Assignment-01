package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.aadassingment01.model.ProductDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "/ProductSaveServlet", value = "/product-servlet")
public class ProductSaveServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String productName = req.getParameter("name");
        String description = req.getParameter("description");
        String priceParam = req.getParameter("price");
        String qtyParam = req.getParameter("qty");
        String categoryIdParam = req.getParameter("CategoryID");
        String imageUrl = req.getParameter("ImageUrl");

        System.out.println(productName + " " + description + " " + priceParam + " " + qtyParam + " " + categoryIdParam + " " + imageUrl);

        if (productName == null || description == null || priceParam == null || qtyParam == null || categoryIdParam == null || imageUrl == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing required parameters");
            return;
        }

        try {
            double price = Double.parseDouble(priceParam);
            int qty = Integer.parseInt(qtyParam);
            int categoryId = Integer.parseInt(categoryIdParam);

            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement(
                         "INSERT INTO product (description, image_url, name, price, quantity, category_id) VALUES (?, ?, ?, ?, ?, ?)")) {

                preparedStatement.setString(1, description);
                preparedStatement.setString(2, imageUrl);
                preparedStatement.setString(3, productName);
                preparedStatement.setDouble(4, price);
                preparedStatement.setInt(5, qty);
                preparedStatement.setInt(6, categoryId);

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Product saved successfully");
                    resp.sendRedirect("product.jsp?status=success");
                } else {
                    System.out.println("Product save failed");
                    resp.sendRedirect("product.jsp?status=failure");
                }
            }
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid number format for price, quantity, or category ID");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error occurred");
        }
    }

}
