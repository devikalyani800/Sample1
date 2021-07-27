package com.pack;

 

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class  MainClass {

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub 
	 
		try {
			  SessionFactory factory=HibernateUtil.getSessionFactory();
			  System.out.println("factory "+factory);
			    Session session=factory.openSession(); 
			    
	 
	         //  Transaction tx = null;
	          
	             session.beginTransaction();
	        	Course21 obj=new Course21();
                
	        	obj.setCourseName("virat");
	        	Long id=(Long)session.save(obj);

	        	System.out.print("Values added "+id);

	        	session.getTransaction().commit();
	    		 
	    		session.close();
	       
	} catch (Exception ex) {
	  System.out.println("ex "+ex); 
	   
	} 
	        

	}

}

