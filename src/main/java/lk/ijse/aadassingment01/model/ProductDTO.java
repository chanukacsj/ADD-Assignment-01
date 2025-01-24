package lk.ijse.aadassingment01.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

public class ProductDTO {

    private int productID;

    private String name;

    private String description;

    private double price;

    private int quantity;

    private String imageUrl;

    int CategoryID;
}
