package com.quanlybanhangquanao.quanlybanhangquanao;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import java.io.IOException;
import java.sql.*;

public class LoginController {
    @FXML
    private TextField usernameField;

    @FXML
    private PasswordField passwordField;

    @FXML
    private Label messageLabel;

    @FXML
    private void handleLogin() {
        String username = usernameField.getText();
        String password = passwordField.getText();

        try (Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Encrypt=false;databaseName=QUAN_LY_BAN_HANG_QUAN_AO;user=sa;password=1621")) {
            CallableStatement stmt = conn.prepareCall("{call VerifyUser(?, ?)}");
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int result = rs.getInt("Result");
                if (result == 1) {
                    String role = rs.getString("Role");
                    switch (role) {
                        case "ADMIN":
                            loadScreen("Home.fxml", "Trang chủ Admin");
                            break;
                        case "NHANVIEN":
                            loadScreen("HomeNhanVien.fxml", "Trang chủ Nhân viên");
                            break;
                        default:
                            messageLabel.setText("Vai trò không hợp lệ.");
                    }
                } else {
                    messageLabel.setText("Tên đăng nhập hoặc mật khẩu không đúng.");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            messageLabel.setText("Lỗi kết nối đến cơ sở dữ liệu.");
        }
    }

    private void loadScreen(String fxmlFile, String title) {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource(fxmlFile));
            Scene scene = new Scene(fxmlLoader.load());
            
            Stage stage = (Stage) usernameField.getScene().getWindow();
            stage.setScene(scene);
            stage.setTitle(title);
            stage.show();
        } catch (IOException e) {
            e.printStackTrace();
            messageLabel.setText("Lỗi khi tải màn hình.");
        }
    }
}