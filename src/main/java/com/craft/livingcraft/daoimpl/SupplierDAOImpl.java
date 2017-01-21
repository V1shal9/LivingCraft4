package com.craft.livingcraft.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.craft.livingcraft.dao.SupplierDAO;
import com.craft.livingcraft.model.Supplier;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Repository
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);

		
	}

	public List<Supplier> getSupplierList() {
		Session session=sessionFactory.getCurrentSession();
		String hql="from Supplier";
		@SuppressWarnings("unchecked")
		List<Supplier> slist=session.createQuery(hql).getResultList();
		return slist;
	}

	public Supplier getSupplierById(int supplierId) {
		Session session=sessionFactory.getCurrentSession();
		String hql="from Supplier where supplierId="+supplierId;
		@SuppressWarnings("unchecked")
		List<Supplier> slist=session.createQuery(hql).getResultList();
		return slist.get(0);
	}

	public void deleteSupplier(int supplierId) {
		Supplier suppliertodelete=new Supplier();
		suppliertodelete.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(suppliertodelete);
		

	}

	public Supplier getSupplierByName(String supplierName) {
		Session session=sessionFactory.getCurrentSession();
		String hql="from Supplier where supplierName="+"'"+supplierName+"'";
		@SuppressWarnings("unchecked")
		List<Supplier> slist=session.createQuery(hql).getResultList();
		return slist.get(0);
	}

	public String getJsonList() {
		Session session=sessionFactory.getCurrentSession();
		String hql="from Supplier";
		@SuppressWarnings("unchecked")
		List<Supplier> slist=session.createQuery(hql).getResultList();
		
		Gson gson=new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList=gson.toJson(slist);
		
		return jsonList;
		
			}

}


