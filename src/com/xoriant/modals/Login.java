package com.xoriant.modals;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="login_data")
public class Login {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column
	private int loginId;
	
	
	@Column
	private String userName;
	
	@Column
	private String password;
	
	public Login() {
		
	}

	public int getLoginId() {
		return loginId;
	}

	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Login [loginId=" + loginId + ", userName=" + userName + ", password=" + password + "]";
	}
	
}

