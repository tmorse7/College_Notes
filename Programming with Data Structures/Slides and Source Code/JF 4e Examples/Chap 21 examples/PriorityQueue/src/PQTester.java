/** 
 * Tests a priority queue.
 * 
 * @author Java Foundations
 */
public class PQTester
{
	public static void main(String[] args)
	{
		PriorityQueue<String> pq = new PriorityQueue<String>();
		
		pq.addElement("this one should be last", 99);
		pq.addElement("first", 1);
		pq.addElement("third", 50);
		pq.addElement("fifth", 92);
		pq.addElement("second", 10);
		pq.addElement("fourth", 55);

		while (!pq.isEmpty())
		{
			System.out.println(pq.removeNext());
		}
	}
}
