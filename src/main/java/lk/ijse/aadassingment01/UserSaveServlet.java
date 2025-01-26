package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.aadassingment01.model.UserDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UserSaveServlet", value = "/user-save-servlet")
public class UserSaveServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("User save servlet");

        // Fetch parameters
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String roleStr = req.getParameter("role");
//        String isActiveStr = req.getParameter("isActive");

        System.out.println(name + " " + email + " " + password + " " + roleStr + " ");

        // Validate inputs
        if (name == null || email == null || password == null || roleStr == null ||
                name.isEmpty() || email.isEmpty() || password.isEmpty() || roleStr.isEmpty()) {

            String message = "All fields are required.";
            resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            return;
        }

        try {
            // Validate and parse the role
            UserDTO.Role role = UserDTO.Role.fromString(roleStr); // Converts the role string to an enum value

            // Convert the string value to a boolean (or numeric value for TINYINT(1))

            // Database operations
            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement(
                         "INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)")) {

                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, password);
                preparedStatement.setString(4, role.name()); // Save the role as a string (e.g., ADMIN or CUSTOMER)

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("User saved successfully");
                    String message = "User saved successfully.";
                    resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
                } else {
                    System.out.println("User save failed");
                    String message = "User save failed.";
                    resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
                }
            }
        } catch (IllegalArgumentException e) {
            // Handle invalid role values
            System.out.println("Invalid role: " + roleStr);
            String message = "Invalid role: " + roleStr + ". Allowed values are ADMIN or CUSTOMER.";
            resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
        } catch (SQLException e) {
            // Handle database exceptions
            System.out.println("Database error: " + e.getMessage());
            String message = "Database error: " + e.getMessage();
            resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
        }
    }
}
