package lk.ijse.aadassingment01.model;

import lk.ijse.aadassingment01.entity.Product;
import lk.ijse.aadassingment01.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CartDTO {
    private User user;
    private Product product;
    private int qty;
}
