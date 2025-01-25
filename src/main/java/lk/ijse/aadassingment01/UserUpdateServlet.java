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

@WebServlet(name = "UserUpdateServlet", value = "/user-update-servlet")
public class UserUpdateServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idParam = req.getParameter("id");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");
        String isActive = req.getParameter("isActive");

        try {
            int id = Integer.parseInt(idParam);
            boolean isActiveInt = Boolean.parseBoolean(isActive);


            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("UPDATE users SET name = ?, email = ?, password = ?, role = ?, is_active = ? WHERE user_id = ?")) {

                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, password);
                preparedStatement.setString(4, role);
                preparedStatement.setBoolean(5, isActiveInt);
                preparedStatement.setInt(6, id);

                int i = preparedStatement.executeUpdate();

                preparedStatement.close();
                connection.close();

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
            resp.sendRedirect("user.jsp");
        }
    }
}
