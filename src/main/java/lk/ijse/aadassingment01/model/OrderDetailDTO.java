package lk.ijse.aadassingment01.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetailDTO {
    private int order;
    private int product;
    private int quantity;
    private BigDecimal unitPrice;
}
