module com.example.feedbacksystem {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.example.feedbacksystem to javafx.fxml;
    exports com.example.feedbacksystem;
}