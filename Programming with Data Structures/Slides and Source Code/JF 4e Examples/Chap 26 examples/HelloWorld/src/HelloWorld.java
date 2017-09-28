import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

/**
 * Demonstrates a simple Hello, World program using JavaFX
 * infrastructure. FXML is not used in this example.
 *
 * @author Java Foundations
 */
public class HelloWorld extends Application
{
	/**
	 * Sets up a label and displays it in pane, scene, and stage.
	 * @param primayStage the primary stage for this application
	 */
	@Override
	public void start(Stage primaryStage)
	{
		Label label = new Label("Hello, World!");

		StackPane pane = new StackPane();
		pane.getChildren().add(label);

		Scene scene = new Scene(pane, 400, 200);

		primaryStage.setTitle("Hello World using JavaFX");
		primaryStage.setScene(scene);
		primaryStage.show();
	}

	/**
	 * Launches the application. This method is not needed in some IDEs
	 * with strong JavaFX support.
	 * @param args the command line arguments
	 */
	public static void main(String[] args)
	{
		launch(args);
	}
}
