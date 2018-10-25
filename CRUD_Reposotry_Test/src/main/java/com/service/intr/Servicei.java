
package com.service.intr;
import java.util.List;

import com.model.Login;
import com.model.User;

public interface Servicei 
{

	public Login login(String uname, String password);

	public void register(User user, Login log);

	public List<User> alldata();

	public User getdata(int id);
	
	public int delete(User u);

	
}
