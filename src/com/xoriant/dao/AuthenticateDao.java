package com.xoriant.dao;

import com.xoriant.modals.Login;

public interface AuthenticateDao {
	public Integer addLoginDetails(Login logindetails);
	public Login authenticateUser(String username,String password);
	public Integer getAdminId();
}
