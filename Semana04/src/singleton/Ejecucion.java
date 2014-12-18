package singleton;

import java.text.DateFormat;

public class Ejecucion {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		PatronSingleton obj1 = PatronSingleton.getInstance();
		System.out.println(obj1);

		PatronSingleton obj2 = PatronSingleton.getInstance();
		System.out.println(obj2);
		
		PatronSingleton obj3 = PatronSingleton.getInstance();
		System.out.println(obj3);

		
		//Donde se ha usado
		DateFormat df1 = DateFormat.getDateInstance();
		System.out.println(df1);
		
		DateFormat df2 = DateFormat.getDateInstance();
		System.out.println(df2);
		
	}

}
