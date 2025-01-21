package lk.ijse.aadassingment01.model;

import lk.ijse.aadassingment01.entity.Order;
import lk.ijse.aadassingment01.entity.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetailDTO {
    private Order order;
    private Product product;
    private int quantity;
    private BigDecimal unitPrice;
}
