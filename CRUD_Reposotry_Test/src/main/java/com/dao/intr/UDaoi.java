package com.dao.intr;

import org.springframework.data.repository.CrudRepository;

import com.model.User;

public interface UDaoi extends CrudRepository<User, Integer>
{
	public User findAllById(int id);
}
