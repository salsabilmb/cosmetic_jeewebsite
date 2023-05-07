package miniProjet;


public class Register {
	private String fullname;
	private String username;
	private String email;
	private String password;
	private String phone;
	private String provider;
	
	
	public Register() {
		super();
	}
	public Register(String fullname, String username, String email, String password, String phone) {
		super();
		this.fullname = fullname;
		this.username = username;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	
	
	

}
