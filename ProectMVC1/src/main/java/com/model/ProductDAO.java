package com.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;



@Repository("ProductDAO")
@Transactional
public  class ProductDAO implements IproductDAO  {

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
		Query<Product> quer = sess.createQuery("FROM Product", Product.class );
		List<Product> al = quer.getResultList();
		return al;
			
	}
	public Product getProduct(int id)
	{
		DbConfig db = new DbConfig();
		sess = db.getSess();
		return (Product)sess.get(Product.class, Integer.valueOf(id));
	}
	
	public boolean updateProduct(Product p)
	{
		try
		{
		DbConfig db = new DbConfig();
		sess = db.getSess();
		trans = sess.beginTransaction();
		sess.update(p);
		trans.commit();
		}
		catch(Exception exp)
		{
			exp.printStackTrace();
			trans.rollback();
			b = false;
		}
		return b;

	}
	
	public boolean deleteProduct(Product p)
	{
		try
		{
			DbConfig db = new DbConfig();
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.delete(p);
			trans.commit();
		}
		catch(Exception ex) {
			ex.printStackTrace();
			trans.rollback();
			b= false;
		}
		return b;
	}
	

}
