package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UserDeleteServlet", value = "/user-delete-servlet")
public class UserDeleteServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("User delete servlet");

        String idParam = req.getParameter("id");
        System.out.println("ID received: " + idParam);

        // Validate `idParam`
        if (idParam == null || idParam.isEmpty()) {
            String message = "Invalid user ID.";
            resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
            return;
        }

        try {
            int id = Integer.parseInt(idParam);

            // Perform the deletion in the database
            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM users WHERE user_id = ?")) {

                preparedStatement.setInt(1, id);
                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("User deleted successfully!");
                    String message = "User deleted successfully!";
                    resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
                } else {
                    System.out.println("User deletion failed!");
                    String message = "User deletion failed. User not found.";
                    resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
                }
            }
        } catch (NumberFormatException e) {
            System.err.println("Invalid ID format: " + e.getMessage());
            String message = "Invalid user ID format.";
            resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            String message = "An error occurred while deleting the user.";
            resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
        }
    }

}
