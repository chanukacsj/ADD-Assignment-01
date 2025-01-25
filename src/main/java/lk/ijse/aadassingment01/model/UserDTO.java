package lk.ijse.aadassingment01.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserDTO {
    private int id;           // User ID
    private String email;     // User email
    private String password;  // User password
    private String name;      // User name
    private Role role;        // User role (ADMIN/CUSTOMER)
    private boolean isActive; // Active status (true/false)

    // Enum to define roles
    public enum Role {
        ADMIN,
        CUSTOMER;

        public static Role fromString(String role) {
            if (role == null || role.isEmpty()) {
                throw new IllegalArgumentException("Role cannot be null or empty.");
            }
            try {
                return Role.valueOf(role.toUpperCase());
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid role: " + role + ". Allowed values are ADMIN or CUSTOMER.");
            }
        }
    }
}
