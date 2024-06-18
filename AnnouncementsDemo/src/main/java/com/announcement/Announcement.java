package com.announcement;


public class Announcement {
	private int id;
	private String title;
	private String description;
	private String postedDate;
	private String editorname;
	private String status;
	
	public Announcement(int id, String title, String description, String postedDate, String editorname, String status) {
		this.id = id;
		this.title = title;
		this.description = description;
		this.postedDate = postedDate;
		this.editorname = editorname;
		this.status = status;
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

	public String getpostedDate() {
		return postedDate;
	}

	public String getEditorname() {
		return editorname;
	}

	public String getStatus() {
		return status;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}
	public void setEditorname(String editorname) {
		this.editorname = editorname;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
