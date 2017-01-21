package com.craft.livingcraft.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.craft.livingcraft.daoimpl.UserDetailsDAOImpl;
import com.craft.livingcraft.model.BillingAddress;
import com.craft.livingcraft.model.ShippingAddress;
//import com.craft.livingcraft.daoimpl.UserDetailsDAOImpl;
import com.craft.livingcraft.model.UserDetails;

@Transactional
@Service
public class UserDetailsService 
{
    @Autowired
    UserDetailsDAOImpl userDetailsDAOImpl;
    
	public void addUserDetails(UserDetails userDetails) 
	{
		userDetailsDAOImpl.addUserDetails(userDetails);
	}
	public void saveShippingAddress(ShippingAddress shippingAddress)
	{
		userDetailsDAOImpl.saveShippingAddress(shippingAddress);
	}
	public void saveBillingAddress(BillingAddress billingAddress)
	{
		userDetailsDAOImpl.saveBillingAddress(billingAddress);
	}
	
	public UserDetails getUserByName(String userName)
	{
		return userDetailsDAOImpl.getUserByName(userName);
	}
	public UserDetails getUserById(int userId)
	{
		return userDetailsDAOImpl.getUserById(userId);
	}
	public ShippingAddress getShippingAddressById(int userId)
	{
		return userDetailsDAOImpl.getShippingAddressById(userId);
	}
	public BillingAddress getBillingAddressById(int userId)
	{
		return userDetailsDAOImpl.getBillingAddressById(userId);
	}
	public int checkuserName(String userName)
	{
		return userDetailsDAOImpl.checkuserName(userName);
	}
}
