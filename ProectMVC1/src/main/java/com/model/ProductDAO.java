package com.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;



public  class ProductDAO  {

	private Transaction trans;
	private Session sess;
	private boolean b = true;

		
	public boolean insertproduct (Product p) {
		try
		{
			DbConfig db = new DbConfig();
			sess =db.getSess();
			trans = sess.beginTransaction();
			sess.save(p);
			trans.commit();
		}
		catch(Exception exp)
		{
			exp.printStackTrace();
			b = false;
		}
		return b;
	}
	public List<Product> getProducts(){
		DbConfig db = new DbConfig();
		sess = db.getSess();
		Query<Product> quer = sess.createQuery("FROM Product",Product.class);
		List<Product> al = quer.getResultList();
		return al;
			
	}

}