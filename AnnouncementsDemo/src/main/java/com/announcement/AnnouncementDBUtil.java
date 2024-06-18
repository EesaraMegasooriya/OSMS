package com.announcement;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AnnouncementDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
public static List<Announcement> display(){
		
		ArrayList <Announcement> ann = new ArrayList<>();
		//show the line and the servlet which has error
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from osms.announcements";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String title = rs.getString(2);
				String description = rs.getString(3);
				String postedDate = rs.getString(4);
				String editorname = rs.getString(5);
				String status = rs.getString(6);
		
				Announcement a = new Announcement(id, title, description, postedDate, editorname, status);
				ann.add(a);
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ann;
	}
	
	public static boolean insertannouncement(String title, String description, String editorname, String status) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into osms.announcements values (0,'"+title+"','"+description+"',curdate(),'"+editorname+"','"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static boolean updateAnnouncement(int id, String title, String description ,String editorname ,String status) {
		boolean isSuccess = false;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update osms.announcements set title='"+title+"', description='"+description+"', posted_date=curdate(), editorName='"+editorname+"', status='"+status+"'  where id ='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
				
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return isSuccess;

	}
	
	public static List<Announcement> getannouncementDetails(int Id){
		ArrayList<Announcement> ann = new ArrayList<>();
		
		int convertedCID = Id;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * from osms.announcements where id = '"+convertedCID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				
				int id = rs.getInt(1);
				String title = rs.getString(2);
				String description = rs.getString(3);
				String postedDate = rs.getString(4);
				String editorname = rs.getString(5);
				String status = rs.getString(6);
				
				Announcement a = new Announcement(id, title, description, postedDate, editorname, status);
				ann.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ann;
	}
	
	public static boolean deleteannouncement(int id) {
		
		boolean isSuccess = false;
		int convertedID = id;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from osms.announcements where Id= '"+convertedID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
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
	}


