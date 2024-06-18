package com.announcement;

public class ExtendedAnnouncement extends Announcement {
	private String category;

    public ExtendedAnnouncement(int id, String title, String description, String postedDate, String editorname, String status, String category) {
        super(id, title, description, postedDate, editorname, status);
        this.category = category;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}



