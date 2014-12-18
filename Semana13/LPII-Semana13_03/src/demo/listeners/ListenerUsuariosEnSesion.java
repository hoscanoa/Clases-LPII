package demo.listeners;

import java.util.Hashtable;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import demo.recursos.beans.BeanUsuario;

/**
 * Application Lifecycle Listener implementation class ListenerUsuariosEnSesion
 *
 */
@WebListener
public class ListenerUsuariosEnSesion implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public ListenerUsuariosEnSesion() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent arg0) {
        //Obtener la sesion y el contexto
    	HttpSession session = arg0.getSession();
    	ServletContext context = session.getServletContext();
    	
    	// Se obtiene el usuario que acaba de iniciar sesion
    	BeanUsuario obj = (BeanUsuario) session
    							.getAttribute("usuario_logeado");
    	
    	if(obj != null){
    		// Se define el HashTable para almacenar los usuarios
    		Hashtable<Integer, String> usuariosEnLinea =
    				(Hashtable<Integer, String>) 
    					context.getAttribute("usuariosEnLinea");
    		
    		if(usuariosEnLinea == null)
    			usuariosEnLinea = new Hashtable<Integer, String>();
    		
    		// Se agrega el usuario a la lista
    		usuariosEnLinea.put(obj.getCodigo(), 
    					obj.getNombre() +  "  " + obj.getApellido());
    		
    		// Se agrega la lista al contexto de la aplicacion
    		context.setAttribute("usuariosEnLinea", usuariosEnLinea);
    	}
    }
   

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent arg0) {
        // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent arg0) {
        // TODO Auto-generated method stub
    }
	
}




