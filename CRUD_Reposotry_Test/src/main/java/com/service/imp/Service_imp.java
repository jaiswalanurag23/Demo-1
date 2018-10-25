package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.intr.LDaoi;
import com.dao.intr.UDaoi;
import com.model.Login;
import com.model.User;
import com.service.intr.Servicei;
@Service
public class Service_imp implements Servicei
{

	@Autowired
	LDaoi d;
	
	@Autowired
	UDaoi ud;
	
	//service impl for login()... 
		@Override
			public Login login(String uname, String password) 
			{
				System.out.println("in login service impl");
				return d.findAllByUnameAndPassword(uname, password);
			}
		
	//service impl for register()...
		@Override
			public void register(User user, Login log) 
			{
				ud.save(user);
				/*d.save(log);*/
			}


			
	// alldata() is getting all data, list of user...
		@Override
			public List<User> alldata() 
			{
				System.out.println("In All Data");
				return (List<User>) ud.findAll();
			}
		
			
	// getdata() is getting data by id...
		@Override
			public User getdata(int id) 
			{
				return ud.findAllById(id);
			}
		
	//service impl for delete()...
		@Override
			public int delete(User u) 
			{
				ud.delete(u.getId());
				 
				return 1;
			}

		

		

}
