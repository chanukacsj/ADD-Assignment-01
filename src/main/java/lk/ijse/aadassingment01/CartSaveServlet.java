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

@WebServlet(name = "CartSaveServlet", value = "/cart-save-servlet")
public class CartSaveServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idParam = req.getParameter("id");
        String quantityParam = req.getParameter("quantity");
        String productIDParam = req.getParameter("productID");
        String userIDParam = req.getParameter("userID");

        try {
            int id = Integer.parseInt(idParam); // Convert to int if possible, otherwise throw NumberFormatException
            int quantity = Integer.parseInt(quantityParam); // Convert to int if possible, otherwise throw NumberFormatException
            int productID = Integer.parseInt(productIDParam); // Convert to int if possible, otherwise throw NumberFormatException
            int userID = Integer.parseInt(userIDParam); // Convert to int if possible, otherwise throw NumberFormatException

            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO cart (id, quantity, product_id, user_id) VALUES (?, ?, ?, ?)")) {

                preparedStatement.setInt(1, id);
                preparedStatement.setInt(2, quantity);
                preparedStatement.setInt(3, productID);
                preparedStatement.setInt(4, userID);

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Cart saved successfully");
                    resp.sendRedirect("cart.jsp?status=success&message=Cart Saved Successfully");
                } else {
                    System.out.println("Failed to save cart");
                    resp.sendRedirect("cart.jsp?status=failure&message=Failed to Save Cart");
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
