package com.xoriant.dao;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.xoriant.modals.Customer;


public class CustomerDaoImpl implements CustomerDao {
	private SessionFactory factory;
	
	public CustomerDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
        Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		factory = meta.getSessionFactoryBuilder().build();
	}
	
	@Override
	public int addCustomer(Customer customer) {
		
		Integer custId=null;
        Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		custId=(Integer) session.save(customer);
		
		txn.commit();
		session.close();
		return custId;
	}

	@Override
	public int updateCustomer(Integer custId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Customer fetchCustomer(String email) {
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		Customer customer =null;
		String hql="FROM Customer C where C.email=:temp";
		TypedQuery<Customer> query=session.createQuery(hql);
		query.setParameter("temp", email);
		customer=query.getSingleResult();
		
		txn.commit();
		session.close();
		return customer;
	}


}