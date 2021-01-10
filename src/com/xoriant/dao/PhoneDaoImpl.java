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

import com.xoriant.modals.Phone;

public class PhoneDaoImpl implements PhoneDao{
	
	SessionFactory factory;
	public PhoneDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	    Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		factory = meta.getSessionFactoryBuilder().build();
	}
	@Override
	public Integer addPhone(Phone phone) {
		Integer phoneId= null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		phoneId = (Integer) session.save(phone);
		txn.commit();
		session.close();
		return phoneId;
	}

	@Override
	public void updatePhone(Integer phoneId, Phone phone) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		Phone phone_orignal = session.get(Phone.class, phoneId);
		Phone phone_updated = phone_orignal.updatePhone(phone);
		session.update(phone_updated);
		txn.commit();
		session.close();
	}

	@Override
	public void deletePhone(Integer phoneId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		Phone phone = session.get(Phone.class, phoneId);
		session.delete(phone);
		txn.commit();
		session.close();
	}

	@Override
	public List<Phone> listPhones() {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		List<Phone> phones = null;
		String hql = "FROM Phone";
		TypedQuery<Phone> query = session.createQuery(hql);
		phones = query.getResultList();
		txn.commit(); 
		session.close();
		return phones;
	}
	@Override
	public Phone getPhone(Integer phoneId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		Phone phone = session.get(Phone.class, phoneId);
		txn.commit(); 
		session.close();
		return phone;
	}


}
