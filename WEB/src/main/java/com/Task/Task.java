package com.Task;

public class Task {
	
	private int id;
	private String title;
	private String description;
	private String ddate;
	
	public Task(int id, String title, String description, String ddate) {
		
		this.id = id;
		this.title = title;
		this.description = description;
		this.ddate = ddate;
	}

	public int getId() {
		return id;
	}

	

	public String getTitle() {
		return title;
	}

	

	public String getDescription() {
		return description;
	}

	

	public String getDdate() {
		return ddate;
	}

	
	

}
