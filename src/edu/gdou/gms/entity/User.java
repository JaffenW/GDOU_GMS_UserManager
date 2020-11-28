package edu.gdou.gms.entity;

public class User {
	private int userId;
	private String password;
	private String userName;
	private String role;
	private String tel;
	private String idNumber;
	private String email;
	private String birthday;
	private String address;
	private String anotherPassword;
	
	public User() {
	}
	
	public User(int userId, String password, String userName, String role, String tel, String idNumber, String email,
			String birthday, String address) {
		super();
		this.userId = userId;
		this.password = password;
		this.userName = userName;
		this.role = role;
		this.tel = tel;
		this.idNumber = idNumber;
		this.email = email;
		this.birthday = birthday;
		this.address = address;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAnotherPassword() {
		return anotherPassword;
	}

	public void setAnotherPassword(String anotherPassword) {
		this.anotherPassword = anotherPassword;
	}

}
