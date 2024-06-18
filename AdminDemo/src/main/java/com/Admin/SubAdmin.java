package com.Admin;

public class SubAdmin extends Admin{
	private String role;

    public SubAdmin(int id, String name, String nic, String phone, String address, String role) {
        super(id, name, nic, phone, address);
        this.role = role;
    }

    // Additional getter 
    public String getRole() {
        return role;
    }

    // Additional setter 
    public void setRole(String role) {
        this.role = role;
    }
}
