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

@WebServlet(name = "CategoryUpdateServlet", value = "/category-update")
public class CategoryUpdateServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Category update servlet");

        String idParam = req.getParameter("id");
        String name = req.getParameter("name");

        System.out.println(idParam + " " + name);

        try {
            int id = Integer.parseInt(idParam);
            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("UPDATE category SET name = ? WHERE id = ?")) {

                preparedStatement.setString(1, name);
                preparedStatement.setInt(2, id);

                int i = preparedStatement.executeUpdate();
                if (i > 0) {
                    resp.sendRedirect("Category.jsp");
                } else {
                    resp.sendRedirect("Category.jsp");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }catch (NumberFormatException e){
            resp.sendRedirect("Category.jsp");
        }

    }
}
