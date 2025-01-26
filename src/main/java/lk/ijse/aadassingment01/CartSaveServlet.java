//package lk.ijse.aadassingment01;
//
//import jakarta.annotation.Resource;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import lk.ijse.aadassingment01.model.CartDTO;
//import lk.ijse.aadassingment01.model.ProductDTO;
//import lk.ijse.aadassingment01.model.UserDTO;
//
//import javax.sql.DataSource;
//import java.io.IOException;
//import java.math.BigDecimal;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//@WebServlet(name = "CartSaveServlet", value = "/cart-save-servlet")
//public class CartSaveServlet extends HttpServlet {
//
//    @Resource(name = "java:comp/env/jdbc/pool")
//    private DataSource dataSource;
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        try (Connection connection = dataSource.getConnection()) {
//            UserDTO user = (UserDTO) req.getServletContext().getAttribute("user");
//            if (user == null) {
//                resp.sendRedirect("logout?alert=Please login to view the cart!");
//                return;
//            }
//
//            String sql = "SELECT " +
//                    "c.cart_id AS cartId, " +
//                    "p.id AS productId, " +
//                    "p.name AS productName, " +
//                    "p.price AS productPrice, " +
//                    "c.quantity AS cartQuantity, " +
//                    "(p.price * c.quantity) AS total " +
//                    "FROM cart c " +
//                    "JOIN product p ON c.product_id = p.id " +
//                    "WHERE c.user_id = ?";
//
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setLong(1, user.getId());
//
//            ResultSet rs = ps.executeQuery();
//            List<CartDTO> cartList = new ArrayList<>();
//
//            while (rs.next()) {
//                CartDTO cartItem = new CartDTO(
//                        rs.getLong("cartId"),
//                        new ProductDTO(
//                                rs.getInt("productId"),
//                                rs.getString("productName"),
//                                rs.getDouble("productPrice"),
//                                rs.get
//
//                        ),
//
//                public class ProductDTO {
//
//                    private int productID;
//
//                    private String name;
//
//                    private String description;
//
//                    private double price;
//
//                    private int quantity;
//
//                    private String imageUrl;
//
//                    int CategoryID;
//                }
//                        rs.getDouble("total"),
//                        rs.getInt("cartQuantity")
//                );
//                cartList.add(cartItem);
//            }
//
//            if (cartList.isEmpty()) {
//                resp.sendRedirect("cart.jsp?alert=Cart is empty!");
//                return;
//            }
//
//            req.setAttribute("cartList", cartList);
//            req.getRequestDispatcher("cart.jsp").forward(req, resp);
//
//        } catch (SQLException e) {
//            throw new RuntimeException("Database error occurred while retrieving the cart.", e);
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        UserDTO user = (UserDTO) req.getServletContext().getAttribute("user");
//        if (user == null) {
//            resp.sendRedirect("index.jsp?alert=Please login to add to cart!");
//            return;
//        }
//
//        String productId = req.getParameter("productId");
//        String qty = req.getParameter("qty");
//
//        try (Connection connection = dataSource.getConnection()) {
//            connection.setAutoCommit(false);
//
//            // Fetch product details
//            String productSql = "SELECT id, name, price, quantity FROM product WHERE id = ?";
//            PreparedStatement productPs = connection.prepareStatement(productSql);
//            productPs.setLong(1, Long.parseLong(productId));
//            ResultSet productRs = productPs.executeQuery();
//
//            if (!productRs.next()) {
//                resp.sendRedirect("products?alert=Product not found!");
//                return;
//            }
//
//            long prodId = productRs.getLong("id");
//            BigDecimal price = productRs.getBigDecimal("price");
//            int availableQty = productRs.getInt("quantity");
//
//            if (availableQty < Integer.parseInt(qty)) {
//                resp.sendRedirect("products?alert=Insufficient stock!");
//                return;
//            }
//
//            // Deduct stock and add to cart
//            String updateProductSql = "UPDATE product SET quantity = quantity - ? WHERE id = ?";
//            PreparedStatement updateProductPs = connection.prepareStatement(updateProductSql);
//            updateProductPs.setInt(1, Integer.parseInt(qty));
//            updateProductPs.setLong(2, prodId);
//            updateProductPs.executeUpdate();
//
//            String insertCartSql = "INSERT INTO cart (user_id, product_id, quantity, total) VALUES (?, ?, ?, ?)";
//            PreparedStatement insertCartPs = connection.prepareStatement(insertCartSql);
//            insertCartPs.setLong(1, user.getId());
//            insertCartPs.setLong(2, prodId);
//            insertCartPs.setInt(3, Integer.parseInt(qty));
//            insertCartPs.setBigDecimal(4, price.multiply(new BigDecimal(qty)));
//            insertCartPs.executeUpdate();
//
//            connection.commit();
//            resp.sendRedirect("products?alert=Product added to cart!");
//
//        } catch (SQLException e) {
//            resp.sendRedirect("products?alert=Failed to add product to cart!");
//            throw new RuntimeException("Database error occurred while adding to cart.", e);
//        }
//    }
//}
