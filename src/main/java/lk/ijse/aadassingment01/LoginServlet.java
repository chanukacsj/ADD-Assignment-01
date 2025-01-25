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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            String alertMessage = "Email or password cannot be empty!";
            resp.sendRedirect("login.jsp?error=" + URLEncoder.encode(alertMessage, "UTF-8"));
            return;
        }

        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT email, password FROM users WHERE email = ?")) {

            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();

            String dbEmail = null;
            String dbPassword = null;

            if (resultSet.next()) {
                dbEmail = resultSet.getString("email");
                dbPassword = resultSet.getString("password");
            }

            if (email.equals(dbEmail) && password.equals(dbPassword)) {
                System.out.println("User logged in successfully!");
                String alertMessage = "User logged in successfully!";
                resp.sendRedirect("index.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
            } else {
                System.out.println("Login failed! Invalid email or password.");
                String alertMessage = "Login failed! Invalid email or password.";
                resp.sendRedirect("login.jsp?error=" + URLEncoder.encode(alertMessage, "UTF-8"));
            }

        } catch (SQLException e) {
            throw new RuntimeException("Database error occurred", e);
        }
    }

}
