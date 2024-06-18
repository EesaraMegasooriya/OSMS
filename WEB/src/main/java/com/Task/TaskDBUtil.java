package com.Task;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TaskDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

	
	
	public static  List<Task> validate(String title) {
		
           ArrayList<Task> cus = new ArrayList<>();
		
         //show the line and the servlet which has error
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from task where title='"+title+"' ";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String title1 = rs.getString(2);
				String description = rs.getString(3);
				String ddate = rs.getString(4);
				
				Task c = new Task(id,title1,description,ddate);
				cus.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
    
    public static boolean insertTask(String title, String description, String ddate) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into task values (0,'"+title+"','"+description+"','"+ddate+"')";
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
    
    public static boolean updatetask(String id, String title,String description,String ddate) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update task set title='"+title+"',description='"+description+"',ddate='"+ddate+"'"
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
 
    public static List<Task> getTaskDetails(String id) {
    	
    	int convertedID = Integer.parseInt(id);
    	
    	ArrayList<Task> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from task where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id1 = rs.getInt(1);
    			String title = rs.getString(2);
    			String description= rs.getString(3);
    			String ddate = rs.getString(4);
    			
    			Task c = new Task(id1,title,description,ddate);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deleteTask(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from task where id='"+convId+"'";
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
    
    
    
    
    public static List<Task> taskdisplayAll(){
		ArrayList<Task> qut = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from osms.task";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String ddate = rs.getString(4);

				
				Task q = new Task(id, title, description, ddate);
				qut.add(q);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		return qut;
	}
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
