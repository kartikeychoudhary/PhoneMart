package com.xoriant.dao;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.xoriant.modals.Login;



public class AuthenticateDaoImpl implements AuthenticateDao {
	
	private SessionFactory factory;
	
	public AuthenticateDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
        Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		factory = meta.getSessionFactoryBuilder().build();
	}
	
	
	public Integer addLoginDetails(Login logindetails) {
		Integer loginId=null;

		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		loginId=(Integer) session.save(logindetails);
		
		txn.commit();
		session.close();
		return loginId;
	} 
	
	public Login authenticateUser(String username,String password) {
		
		
		Login loginobj=null;
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		String hql="FROM Login L where L.userName=:u AND L.password=:p";
		
		TypedQuery<Login> query=session.createQuery(hql);
		query.setParameter("u", username);
		query.setParameter("p", password);
		
		loginobj=query.getSingleResult();
		
		
		return loginobj;
		
	}
	
	public Integer getAdminId() {
		return 87;
	}

}
