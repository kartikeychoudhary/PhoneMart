package com.xoriant.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.xoriant.modals.Cart;
import com.xoriant.modals.Login;
import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;

public class CartDaoImpl implements CartDao {
	
	SessionFactory factory;
	
	public CartDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	    Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		factory = meta.getSessionFactoryBuilder().build();
	}

	@Override
	public Integer addToCart(Cart cart) {
		Integer cartId= null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		cartId = (Integer) session.save(cart);
		txn.commit();
		session.close();
		return cartId;
	}

	@Override
	public void removeFromCart(Integer cartId) {
		
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		Cart cart = session.get(Cart.class, cartId);
		session.delete(cart);
		txn.commit();
		session.close();
		
	}

	@Override
	public List<Phone> fetchPhones(Integer customerId) {
		List<Phone> phones =null;
		
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		// String hql="FROM Login L where L.userName=:u AND L.password=:p";
		String hql = "from Phone pd right join (select cd.phoneId from Cart cd where cd.customerId=:cid) as r on pd.phoneId = r.phoneId";
		TypedQuery<Phone> query=session.createQuery(hql);
		query.setParameter("cid", customerId);
		
		phones=query.getResultList();
		return phones;
	}

	@Override
	public List<Cart> fetchCartItems(Integer customerId) {
		List<Cart> cartItems =null;
		
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		// String hql="FROM Login L where L.userName=:u AND L.password=:p";
		String hql = "from Cart ct where ct.customerId=:cid";
		TypedQuery<Cart> query=session.createQuery(hql);
		query.setParameter("cid", customerId);
		
		cartItems=query.getResultList();
		return cartItems;
	}
	
}
