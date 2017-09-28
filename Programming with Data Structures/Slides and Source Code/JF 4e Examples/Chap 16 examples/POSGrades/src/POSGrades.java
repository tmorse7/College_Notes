/**
 * Demonstrates the use of an Iterable object (and the technique for reading
 * a serialized object from a file).
 * 
 * @author Java Foundations
 * @version 4.0
 */
public class POSGrades
{
	/**
	 * Reads a serialized Program of Study, then prints all courses in which
	 * a grade of A or A- was earned.
	 */
	public static void main(String[] args) throws Exception
	{
		ProgramOfStudy pos = ProgramOfStudy.load("ProgramOfStudy");

		System.out.println(pos);

		System.out.println("Classes with Grades of A or A-\n");

		for (Course course : pos)
		{
			if (course.getGrade().equals("A") || course.getGrade().equals("A-"))
				System.out.println(course);
		}
	}
}
