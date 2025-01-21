package lk.ijse.aadassingment01.model;

import lk.ijse.aadassingment01.entity.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CategoryDTO {
    private String categoryName;
    private Product product;
}
