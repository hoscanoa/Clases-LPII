package demo.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ListenerContext
 *
 */
@WebListener
public class ListenerContext implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ListenerContext() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        System.out.println("Listener - Contexto : Finalizado " +
        		arg0.getSource().toString());
    } 

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
    	System.out.println("Listener - Contexto : Inicializado " +
    			arg0.getSource().toString());
    }
	
}
