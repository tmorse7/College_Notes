
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 * Demonstrates a JavaFX application that relies on FXML.
 * 
 * @author Java Foundations
 */
public class HelloMoon extends Application
{
	/**
	 * Loads the GUI from the FXML, sets the scene, and displays the
	 * primary stage.
	 * @param stage the primary stage for this application
	 */
	@Override
	public void start(Stage stage) throws Exception
	{
		Parent root = FXMLLoader.load(getClass().getResource("HelloMoon.fxml"));

		Scene scene = new Scene(root);

		stage.setScene(scene);
		stage.show();
	}

	/**
	 * Launches the application.
	 * @param args the command line arguments
	 */
	public static void main(String[] args)
	{
		launch(args);
	}
}
