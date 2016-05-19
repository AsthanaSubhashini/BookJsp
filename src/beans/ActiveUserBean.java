package beans;

import listeners.SessionListener;

public class ActiveUserBean
{
	private int activeUsers;

	/**
	 * @return the activeUsers
	 */
	public int getActiveUsers()
	{
		System.out.println(SessionListener.getActiveUsers());
		return SessionListener.getActiveUsers();
	}
	
}
