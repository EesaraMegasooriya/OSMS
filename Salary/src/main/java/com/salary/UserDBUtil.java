package com.salary;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

	
	
	public static  List<User> validate(String name, String nic) {
		
           ArrayList<User> cus = new ArrayList<>();
         //show the line and the servlet which has error
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from salary where name='"+name+"' and nic='"+nic+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String nic1 = rs.getString(3);
				String salary = rs.getString(4);
				String increment = rs.getString(5);
				String decrement = rs.getString(6);
				String total = rs.getString(7);
				
				User c = new User(id,name1,nic1,salary,increment,decrement,total);
				cus.add(c);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
    
    public static boolean insertcustomer(int id, String name, String nic, String salary, String increment, String decrement, String total) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into salary values (0,'"+name+"','"+nic+"','"+salary+"','"+increment+"','"+decrement+"','"+total+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatecustomer(String id, String name, String nic, String salary, String increment, String decrement, String total) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update shopping.salary set name='"+name+"',nic='"+nic+"',salary='"+salary+"',increment='"+increment+"' ,decrement='"+decrement+"' ,total='"+total+"' "
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		 
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<User> getCustomerDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from salary where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name1 = rs.getString(2);
				String nic1 = rs.getString(3);
				String salary = rs.getString(4);
				String increment = rs.getString(5);
				String decrement = rs.getString(6);
				String total = rs.getString(7);
				
				User c = new User(id,name1,nic1,salary,increment,decrement,total);
				cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from salary where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
