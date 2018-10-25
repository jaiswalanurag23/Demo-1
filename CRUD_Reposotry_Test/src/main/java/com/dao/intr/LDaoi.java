package com.dao.intr;

import org.springframework.data.repository.CrudRepository;

import com.model.Login;

public interface LDaoi extends CrudRepository<Login, Integer>
{
	public Login findAllByLoginId(int id);
	public Login findAllByUnameAndPassword(String uname,String password);	
}
