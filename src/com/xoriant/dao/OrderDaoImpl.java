package com.xoriant.dao;

import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.xoriant.dao.OrderDao;;

public class OrderDaoImpl implements OrderDao {

	SessionFactory factory;

	public OrderDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	    Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		factory = meta.getSessionFactoryBuilder().build();
	}

	@Override
	public Integer addOrder(Order order) {
		Integer orderId= null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		orderId = (Integer) session.save(order);
		txn.commit();
		session.close();
		return orderId;
	}

	@Override
	public void deleteOrder(Integer orderId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Phone> fetchPhones(Integer customerId) {
		List<Phone> phones =null;
		
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		// String hql="FROM Login L where L.userName=:u AND L.password=:p";
		String hql = "from Phone pd  where pd.phoneId in (select ord.phoneId from Order ord where ord.customerId=:cid)";
		TypedQuery<Phone> query=session.createQuery(hql);
		query.setParameter("cid", customerId);
		
		phones=query.getResultList();
		
		txn.commit();
		session.close();
		return phones;
	}

	@Override
	public List<Order> fetchOrders(Integer customerId) {
		List<Order> orders =null;
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		// String hql="FROM Login L where L.userName=:u AND L.password=:p";
		String hql = "from Order ord  where ord.customerId=:cid)";
		TypedQuery<Order> query=session.createQuery(hql);
		query.setParameter("cid", customerId);
		
		orders=query.getResultList();
		
		txn.commit();
		session.close();
		return orders;
	}

	@Override
	public Order getOrder(Integer orderId) {
		Order order = null;
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		order = session.get(Order.class, orderId);
		
		txn.commit();
		session.close();
		
		return order;
	}
	
	
	
}
