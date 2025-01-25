package lk.ijse.aadassingment01;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.aadassingment01.model.ProductDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RomanceServlet", value = "/romance-servlet")
public class RomanceServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("romance servlet");

        List<ProductDTO> productDTOList = new ArrayList<>();

        try (Connection connection = dataSource.getConnection();) {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE category_id = 1;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
               int id = resultSet.getInt(1);
               String name = resultSet.getString(4);
               String description = resultSet.getString(2);
               double price = resultSet.getDouble(5);
               int quantity = resultSet.getInt(6);
               String imageUrl = resultSet.getString(3);
               int categoryId = resultSet.getInt(7);

                ProductDTO productDTO = new ProductDTO(id, name, description, price, quantity, imageUrl, categoryId);
                productDTOList.add(productDTO);
            }

            req.setAttribute("productList", productDTOList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("romance.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
