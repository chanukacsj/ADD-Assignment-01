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

@WebServlet(name = "CategoryDeleteServlet", value = "/category-delete")
public class CategoryDeleteServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Category delete servlet");

        String idParam = req.getParameter("id");
        System.out.println("Id: " + idParam);

        if (idParam == null || idParam.isEmpty()) {
            System.out.println("Id is required");
            resp.sendRedirect("Category.jsp?status=failure&message=Id is required");
            return;
        }
        try {
            int id = Integer.parseInt(idParam);
            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM category WHERE id = ?")) {

                preparedStatement.setInt(1, id);
                int rowsDeleted = preparedStatement.executeUpdate();

                if (rowsDeleted > 0) {
                    System.out.println("Category deleted successfully");
                    resp.sendRedirect("Category.jsp?status=success&message=Category deleted successfully");
                } else {
                    System.out.println("Category not found");
                    resp.sendRedirect("Category.jsp?status=failure&message=Category not found");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }catch (NumberFormatException e) {
            System.out.println("Invalid id format");
            resp.sendRedirect("Category.jsp?status=failure&message=Invalid id format");
        }
    }
}
