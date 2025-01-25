package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.aadassingment01.model.CategoryDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoryAllServlet", value = "/category-all-servlet")
public class CategoryAllServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Category all servlet");
        List<CategoryDTO> categoryList = new ArrayList<>();

        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM category ORDER BY id ASC;");
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                CategoryDTO category = new CategoryDTO(
                        resultSet.getInt("id"),
                        resultSet.getString("name")
                );
                System.out.println("Category: " + category);
                categoryList.add(category);
            }
            req.setAttribute("categoryList", categoryList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("Category.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

