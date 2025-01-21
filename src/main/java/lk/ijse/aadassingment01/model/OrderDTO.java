package lk.ijse.aadassingment01.model;

import lk.ijse.aadassingment01.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDTO {
    User user;
    String orderDate;
    Status status;
    double totalAmount;
    public enum Status {
        PENDING, PROCESSING, SHIPPED, DELIVERED, CANCELLED
    }

}
