import javax.swing.*;
import java.beans.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

/**
 * Provides a graphical user interface for the thread sorts demo.
 * @author Java Foundations
 * @version 4.0
 *
 */
public class View implements ActionListener, PropertyChangeListener
{
	private JFrame frame = new JFrame("Thread Sorts Demo");
	private JPanel pane = new JPanel(new GridLayout(6, 1));

	private JLabel inputLabel = new JLabel("Enter number between 1000 and 1000000");
	private JButton go = new JButton("Go");
	private JLabel finished = new JLabel("Process Status:");

	private JTextField input = new JTextField();

	private JPanel inputPanel = new JPanel(new FlowLayout());

	private JPanel insertionPanel = new JPanel(new FlowLayout());

	private JProgressBar insertionBar = new JProgressBar();

	private JPanel quickPanel = new JPanel(new FlowLayout());

	private JProgressBar quickBar = new JProgressBar();

	private int userInput;

	private InsertionSortDemo insertionSort;
	private QuickSortDemo quickSort;

	private Integer[] data;
	private Integer[] insertionData;
	private Integer[] quickData;

	private JLabel insertionLabel = new JLabel("Insertion Sort:");
	private JLabel quickLabel = new JLabel("Quick Sort:");

	/**
	 * Constructor: Sets up and displays the GUI.
	 */
	public View()
	{
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocationRelativeTo(null);

		input.setPreferredSize(new Dimension(150, 25));
		inputPanel.add(inputLabel);
		inputPanel.add(input);
		inputPanel.add(go);
		insertionPanel.add(insertionLabel);
		insertionPanel.add(insertionBar);
		quickPanel.add(quickLabel);
		quickPanel.add(quickBar);

		pane.add(inputPanel);
		pane.add(insertionPanel);
		pane.add(quickPanel);
		pane.add(finished);

		go.addActionListener(this);

		frame.add(pane);
		frame.pack();
		frame.setVisible(true);
		frame.setResizable(false);
	}

	/**
	 * Called when an object to which it is attached
	 * receives an action event.
	 * @param event the event to be handled
	 */
	@Override
	public void actionPerformed(ActionEvent event) 
	{
		if(event.getSource() == go)
		{
			try
			{
				if (Integer.parseInt(input.getText()) > 1000000 ||
						Integer.parseInt(input.getText()) < 1000)
					JOptionPane.showMessageDialog(null,
							"Enter an integer between 1000 and 1000000");
				else
				{
					userInput = Integer.parseInt(input.getText());
					createArray();
					runThreads();
				}
			}
			catch (java.lang.NumberFormatException e)
			{
				JOptionPane.showMessageDialog(null, "Input must be an integer between 1000 and 1000000");
			}
		}
	}

	/**
	 * Creates an array of randomly generated integers
	 * and then copies it as needed.
	 */
	private void createArray()
	{
		//creates array 
		data = new Integer[userInput];

		Random generator = new Random();

		//loads array with random ints
		for(int x = 0; x < data.length; x++)
		{
			data[x] = generator.nextInt(1000000);

		}
		//creates deep copies of array
		insertionData = data.clone();
		quickData = data.clone();
	}
	
	/**
	 * Executes the SwingWorker threads.
	 */
	private void runThreads()
	{
		//passes these copies into runnable classes
		insertionSort = new InsertionSortDemo(insertionData);
		quickSort = new QuickSortDemo(quickData);

		//add change listeners for each of the demos
		insertionSort.addPropertyChangeListener(this);
		quickSort.addPropertyChangeListener(this);

		//starting threads
		insertionSort.execute();
		quickSort.execute();
	}

	/**
	 * Called when an object to which it is attached
	 * issues a property change event.
	 * @param evt the event to be handeled
	 */
	public void propertyChange(PropertyChangeEvent evt) 
	{
		if (evt.getSource().equals(insertionSort))
		{
			if ("progress" == evt.getPropertyName()) 
			{
				int progress = (Integer) evt.getNewValue();
				if (progress == 100) 
				{
					insertionBar.setValue(progress);
					finished.setText("Process Status: complete");
				}
				else 
				{
					finished.setText("Process Status: running");
					insertionBar.setValue(progress);
				}
			}
		}
		else if (evt.getSource().equals(quickSort))
		{
			if ("progress" == evt.getPropertyName()) 
			{
				int progress = (Integer) evt.getNewValue();
				if (progress == 100) 
				{
					quickBar.setValue(progress);
					finished.setText("Process Status: complete");
				}
				else 
				{
					finished.setText("Process Status: running");
					quickBar.setValue(progress);
				}
			}
		}
	}
}