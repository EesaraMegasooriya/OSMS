package com.salary;


public class User {
    private int id;
    private String name;
    private String nic;
    private String salary;
    private String increment;
    private String decrement;
    private String total;
    
	public User(int id, String name, String nic, String salary, String increment, String decrement, String total) {
		super();
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.salary = salary;
		this.increment = increment;
		this.decrement = decrement;
		this.total = total;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getIncrement() {
		return increment;
	}
	public void setIncrement(String increment) {
		this.increment = increment;
	}
	public String getDecrement() {
		return decrement;
	}
	public void setDecrement(String decrement) {
		this.decrement = decrement;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
    
    
	

	  
}
