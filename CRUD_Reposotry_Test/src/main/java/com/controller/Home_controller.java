package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Login;
import com.model.User;
import com.service.intr.Servicei;

@Controller

public class Home_controller 
{
	@Autowired
	Servicei ser;
	
	List<User> list;

	@RequestMapping("/")
	public String login_pg()
	{
		System.out.println("In login.jsp");
		System.out.println("changes for branch added");
		return "login";
	}


	@RequestMapping("/log")
	public String login(@ModelAttribute Login log,Model model)
	{
		System.out.println("hello");
		
		String username = log.getUname();
		String password = log.getPassword();
		
		System.out.println("User Name is - "+username+ " Password is - "+password);
		
		Login login = ser.login(username,password);
		
		String uname = login.getUname();
		String pass  = login.getPassword();
		
		System.out.println("in log");
		
		if(uname!= null && pass!= null)
		{
			System.out.println("not null");
			list = ser.alldata();	
			model.addAttribute("data", list);
			System.out.println("list is - "+list);
		}
		
		
		return "success";
	}


	@RequestMapping("/regi")
	public String registerpage()
	{
		return "register";
	}

	//Request Mapping to show register.jsp...
		@RequestMapping("/register")  
			public ModelAndView register_pg(@ModelAttribute User user, @ModelAttribute Login log )
			{
				System.out.println("In register.jsp");
				System.out.println(log.getPassword()+log.getUname());
				user.setLogin(log);
				ser.register(user,log);
				
				return new ModelAndView("login");	
			}

	//Request Mapping for delete...	
		@RequestMapping("/delete")
			public String delete(@ModelAttribute User user,Model model)
			{
				User u=ser.getdata(user.getId());
				int id=ser.delete(u);
				list = ser.alldata();
				model.addAttribute("data", list);
				return "success";
			}


	/*/Request Mapping for edit...	
		@RequestMapping("/edit")
			public String edit(@ModelAttribute User student,Model model)
			{
				User stu=ser.getdata(student.getId());
				model.addAttribute("data", stu);
		
				return "edit";
			}


	//Request Mapping for update...	
		@RequestMapping("/update")
			public String update(@ModelAttribute User stu,Model model)
			{
		
				ser.register(stu);
				list = ser.alldata();
				model.addAttribute("data",list);
				return "success";
			}*/
}
