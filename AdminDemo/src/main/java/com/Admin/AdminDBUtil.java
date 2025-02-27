package com.Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class AdminDBUtil {

	//DETA INSERT TO DB
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;

	public static List<Admin> validate(String name,String nic){
		
		ArrayList<Admin> adm = new ArrayList<>();
		
		//Create DB  Connection
		String url ="jdbc:mysql://127.0.0.1:3306/osms";
		String user = "root";
	    String pass = "12345";
		//Validate
	    //show the line and the servlet which has error 
		try {
			//DB CONNECTION
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			//SQL QUERY
			String sql = "select * from osms.users where name='"+name+"' and nic='"+nic+"'";

			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String Name = rs.getString(2);
				String Nic = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				
				Admin a = new Admin(id,Name,Nic,phone,address);
				adm.add(a);

			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return adm;
	}
	
	//InsertData
	public static boolean admininsert(String name,String nic,String phone, String address) {
		
		boolean isSuccess = false;
		
		
	    
	    try {
	    	//DB CONNECTION
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql ="insert into osms.users values (0,'"+name+"','"+nic+"','"+phone+"','"+address+"')";

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}

	    }catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	//updateData
	public static boolean updateAdmin(String id, String name,String nic,String phone, String address){
		
		try {
			
			//DB CONNECTION
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "update osms.users set name='"+name+"',nic='"+nic+"',phone='"+phone+"',address='"+address+"'"+ 
			"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}

			
		}catch(Exception e) {
			e.printStackTrace();
		}
	return isSuccess;
	}
	

	public static List<Admin> getAdminDetails(String Id){
		
		int convertedID =	Integer.parseInt(Id);
		
		ArrayList<Admin> adm = new ArrayList<>();
		
		try {
			
			//DB CONNECTION
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from osms.users where id='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				
				Admin a = new Admin(id,name,nic,phone,address);
				adm.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return adm;
		
	}
	//Delete Data
	public static boolean deleteAdmin(String id){
		
		int convID = Integer.parseInt(id);
		
			try {
			
			//DB CONNECTION
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from osms.users where id='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}

			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
		
	}	
	
	//DisplyData
	public static List<Admin> getAllAdmins() {
	    ArrayList<Admin> admins = new ArrayList<>();
	    
	    try {
	        // DB CONNECTION
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "select * from osms.users";
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String nic = rs.getString(3);
	            String phone = rs.getString(4);
	            String address = rs.getString(5);
	            
	            Admin a = new Admin(id, name, nic, phone, address);
	            admins.add(a);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return admins;
	}

}
