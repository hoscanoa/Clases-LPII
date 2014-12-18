package demo.listeners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class ListenerSession
 *
 */
@WebListener
public class ListenerSession implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public ListenerSession() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0) {
        System.out.println("Listener - Session : Creado" + 
        		arg0.getSession().getId());
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0) {
    	System.out.println("Listener - Session : Destruido" + 
    			arg0.getSession().getId());
    }
	
}









