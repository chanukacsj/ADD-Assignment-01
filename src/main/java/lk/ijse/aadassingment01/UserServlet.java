package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
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

        System.out.println(email +"" + password);

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO user (email, password) VALUES (?, ?)");

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            int i = preparedStatement.executeUpdate();

            preparedStatement.close();
            connection.close();

            if (i > 0) {
                System.out.println("login success");
                resp.sendRedirect("index.jsp");
            } else {
                System.out.println("login failed");
                resp.sendRedirect("signUp.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
