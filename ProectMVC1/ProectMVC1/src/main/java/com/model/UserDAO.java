package com.model;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserDAO {

	private Transaction trans1;
	private Session sess;
	private boolean b = true;

		
		
	public boolean insertuser (User u) {
		try
		{
			DbConfig du = new DbConfig();
			sess =du.getSess();
			trans1 = sess.beginTransaction();
			sess.save(u);
			trans1.commit();
		}
		catch(Exception exp)
		{
			exp.printStackTrace();
			b = false;
		}
		return b;
	}

}
