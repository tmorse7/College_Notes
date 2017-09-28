/**
 * SolveTowers uses recursion to solve the Towers of Hanoi puzzle.
 *
 * @author Java Foundations
 * @version 4.0
 */
public class SolveTowers
{
	/**
	 * Creates a TowersOfHanoi puzzle and solves it.
	 */
	public static void main(String[] args)
	{
		TowersOfHanoi towers = new TowersOfHanoi(4);
		towers.solve();
	}
}
