package listeners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionListener {

	public static int activeUsers;
    public SessionListener() {
        System.out.println("Got instatiated");
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 
    	System.out.println("Session Created"+arg0.hashCode());
    	++activeUsers;
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
    	System.out.println("Session Destroyed"+arg0.hashCode());
    	--activeUsers;
    }

	/**
	 * @return the activeUsers
	 */
	public static int getActiveUsers()
	{
		return activeUsers;
	}
	 
	
    
}
