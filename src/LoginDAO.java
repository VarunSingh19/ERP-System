import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/users"; // MySQL URL
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public String validate(Login login) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Updated to the latest MySQL driver class
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String sql = "SELECT role FROM users WHERE username = ? AND password = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, login.getUsername());
                statement.setString(2, login.getPassword());
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        return resultSet.getString("role");
                    }
                }
            }
        }
        return null;
    }
}
