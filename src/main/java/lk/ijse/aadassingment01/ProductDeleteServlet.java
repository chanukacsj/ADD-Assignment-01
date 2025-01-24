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

@WebServlet(name = "/ProductDeleteServlet", value = "/product-delete-servlet")

public class ProductDeleteServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");

        if (name != null) {
            resp.sendRedirect("product.jsp");
        }

        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM product WHERE name = ?")) {

            preparedStatement.setString(1, name);
            int i = preparedStatement.executeUpdate();

            preparedStatement.close();
            connection.close();

            if (i > 0) {
                System.out.println("Product deleted successfully");
                resp.sendRedirect("product.jsp");

            }else {
                System.out.println("Product delete failed");
                resp.sendRedirect("product.jsp");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
