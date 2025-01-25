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

@WebServlet(name = "/CategorySaveServlet", value = "/category-save-servlet")
public class CategorySaveServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("Category save-servlet");

        String name = req.getParameter("name");

        System.out.println(name);

        if (name == null || name.isEmpty()) {
            String alertMessage = "Category name cannot be empty!";
            resp.sendRedirect("category.jsp?error=" + URLEncoder.encode(alertMessage, "UTF-8"));
            return;
        }

        try (Connection connection = dataSource.getConnection();) {
            String query = "INSERT INTO category (name) VALUES (?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, name);

               int rowsAffected = preparedStatement.executeUpdate();

               if (rowsAffected > 0) {
                   System.out.println("Category saved successfully!");
                   String alertMessage = "Category saved successfully!";
                   resp.sendRedirect("Category.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
               } else {
                   System.out.println("Category not saved!");
                   String alertMessage = "Category not saved!";
                   resp.sendRedirect("Category.jsp?error=" + URLEncoder.encode(alertMessage, "UTF-8"));
               }
              }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
