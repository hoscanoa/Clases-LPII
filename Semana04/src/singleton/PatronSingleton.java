package singleton;

public class PatronSingleton {
	public static PatronSingleton instance = null;

	private PatronSingleton() {
	}

	public static PatronSingleton getInstance() {
		if (instance == null) {
			instance = new PatronSingleton();
			System.out.println("Esta es una nueva instancia");
		}
		System.out.println("Devolviendo la instancia");
		return instance;
	}

}
