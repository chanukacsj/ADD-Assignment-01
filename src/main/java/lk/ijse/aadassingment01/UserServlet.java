package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "/userServlet", value = "/user-Servlet")
public class UserServlet extends HelloServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String name = req.getParameter("name");

        System.out.println(email + " " + password + " " + name);
        if (email.isEmpty() || password.isEmpty() || name.isEmpty()) {
            System.out.println("email or password or name is empty");
            String message = URLEncoder.encode("Email, password, or name cannot be empty", "UTF-8");
            resp.sendRedirect("signUp.jsp?message=" + message);
            return;
        }

        try (Connection connection = dataSource.getConnection()) {
            // Check if email already exists
            String checkQuery = "SELECT COUNT(*) FROM users WHERE email = ?";
            try (PreparedStatement checkStmt = connection.prepareStatement(checkQuery)) {
                checkStmt.setString(1, email);
                try (ResultSet resultSet = checkStmt.executeQuery()) {
                    if (resultSet.next() && resultSet.getInt(1) > 0) {
                        System.out.println("Duplicate email detected");
                        String message = URLEncoder.encode("Email is already registered. Please use another email.", "UTF-8");
                        resp.sendRedirect("signUp.jsp?message=" + message);
                        return;
                    }
                }
            }

            // Insert new user if email is not a duplicate
            String insertQuery = "INSERT INTO users (email, password, name) VALUES (?, ?, ?)";
            try (PreparedStatement insertStmt = connection.prepareStatement(insertQuery)) {
                insertStmt.setString(1, email);
                insertStmt.setString(2, password);
                insertStmt.setString(3, name);

                int rowsAffected = insertStmt.executeUpdate();
                if (rowsAffected > 0) {
                    System.out.println("Account created successfully");
                    String message = URLEncoder.encode("Account Created Successfully", "UTF-8");
                    resp.sendRedirect("index.jsp?message=" + message);
                } else {
                    System.out.println("Account creation failed");
                    String message = URLEncoder.encode("Account Creation Failed", "UTF-8");
                    resp.sendRedirect("index.jsp?message=" + message);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
