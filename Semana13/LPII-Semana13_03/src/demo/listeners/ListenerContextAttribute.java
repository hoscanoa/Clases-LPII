package demo.listeners;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ListenerContextAttribute
 *
 */
@WebListener
public class ListenerContextAttribute implements ServletContextAttributeListener {

    /**
     * Default constructor. 
     */
    public ListenerContextAttribute() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
     */
    public void attributeAdded(ServletContextAttributeEvent arg0) {
    	System.out.println("Listener - Context - Attribute : Agregado" +
    		arg0.getName());
    }

	/**
     * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
     */
    public void attributeRemoved(ServletContextAttributeEvent arg0) {
    	System.out.println("Listener - Context - Attribute : Eliminado" +
		arg0.getName());
    }

	/**
     * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
     */
    public void attributeReplaced(ServletContextAttributeEvent arg0) {
    	System.out.println("Listener - Context - Attribute : Reemplazado" +
		arg0.getName());
    }
	
}
