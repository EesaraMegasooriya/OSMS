package com.salary;

public class Employee extends User{
	private String department;

    public Employee(int id, String name, String nic, String salary, String increment, String decrement, String total, String department) {
        super(id, name, nic, salary, increment, decrement, total);
        this.department = department;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

}



