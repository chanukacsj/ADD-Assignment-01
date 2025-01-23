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

        System.out.println(email + " " + password);

        if (email == null || password == null) {
            resp.sendRedirect("login.jsp");
            return;
        }
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "SELECT * FROM user WHERE email = ? AND password = ?")) {

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String alertMessage = "User Login Successfully!";
                    resp.sendRedirect("index.jsp?message+" + URLEncoder.encode(alertMessage,"UTF-8"));
                } else {
                    String alertMessage = "User Login Failed!";
                    resp.sendRedirect("login.jsp?error="+URLEncoder.encode(alertMessage,"UTF-8"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
