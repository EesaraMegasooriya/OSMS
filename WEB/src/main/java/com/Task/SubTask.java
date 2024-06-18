package com.Task;

public class SubTask extends Task {
	private String assignedTo;
    private boolean completed;

    public SubTask(int id, String title, String description, String ddate, String assignedTo, boolean completed) {
        super(id, title, description, ddate);
        this.assignedTo = assignedTo;
        this.completed = completed;
    }

    public String getAssignedTo() {
        return assignedTo;
    }

    public void setAssignedTo(String assignedTo) {
        this.assignedTo = assignedTo;
    }

    public boolean isCompleted() {
        return completed;
    }

    public void setCompleted(boolean completed) {
        this.completed = completed;
    }

}

