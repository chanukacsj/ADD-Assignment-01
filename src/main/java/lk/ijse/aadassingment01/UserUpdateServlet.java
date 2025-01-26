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

@WebServlet(name = "UserUpdateServlet", value = "/user-update-servlet")
public class UserUpdateServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("User update servlet");

        String idParam = req.getParameter("id");
        String role = req.getParameter("role");
        String isActive = req.getParameter("isActive");

        System.out.println("isActive parameter: " + isActive);

        if (role == null || isActive == null) {
            String message = "All fields are required.";
            resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            return;
        }
        if (isActive.isEmpty()) {
            isActive = "0";
        }


        try {
            int id = Integer.parseInt(idParam);

            // Convert isActive to boolean based on its actual value
            boolean isActiveBoolean;
            if ("1".equals(isActive)) {
                isActiveBoolean = true;
            } else if ("0".equals(isActive)) {
                isActiveBoolean = false;
            } else {
                throw new IllegalArgumentException("Invalid value for isActive: " + isActive);
            }

            System.out.println("isActiveBoolean: " + isActiveBoolean);

            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement(
                         "UPDATE users SET role = ?, is_active = ? WHERE user_id = ?")) {
                preparedStatement.setString(1, role);
                preparedStatement.setBoolean(2, isActiveBoolean); // Set the boolean value
                preparedStatement.setInt(3, id);

                int i = preparedStatement.executeUpdate();

                if (i > 0) {
                    System.out.println("User updated successfully");
                    String message = "User updated successfully";
                    resp.sendRedirect("user.jsp?message=" + message);
                } else {
                    System.out.println("User update failed");
                    String message = "User update failed";
                    resp.sendRedirect("user.jsp?message=" + message);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        } catch (NumberFormatException e) {
            System.out.println("Invalid id format: " + idParam);
            resp.sendRedirect("user.jsp?error=Invalid user ID");
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
            resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(e.getMessage(), "UTF-8"));
        }
    }

}
