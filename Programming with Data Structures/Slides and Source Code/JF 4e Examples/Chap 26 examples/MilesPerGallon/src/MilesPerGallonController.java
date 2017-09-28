import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;

/**
 * The controller for the Miles Per Gallon program.
 * 
 * @author Java Foundations
 */
public class MilesPerGallonController
{
	private int milesTraveled = 100;

	// Controls defined in the FXML file
	@FXML
	private Label milesLabel;

	@FXML
	private Slider milesSlider;

	@FXML
	private TextField gasTextField;

	@FXML
	private Button calculateButton;

	@FXML
	private Label resultLabel;

	@FXML
	private void calculateMPG(ActionEvent event)
	{
		double gasUsed = Double.parseDouble(gasTextField.getText());
		double mpg = milesTraveled / gasUsed;
		resultLabel.setText(String.format("MPG: %.2f", mpg));
	}

	public void initialize()
	{
		milesSlider.valueProperty().addListener(new SliderListener());
	}

	/**
	 * An inner class that serves as the listener for the slider.
	 */
	private class SliderListener implements ChangeListener<Number>
	{
		@Override
		public void changed(ObservableValue<? extends Number> ov,
				Number oldValue, Number newValue)
		{
			milesTraveled = newValue.intValue();
			milesLabel.setText("Miles: " + milesTraveled);
		}
	}
}
