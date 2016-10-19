package kr.ac.sungkyul.abella.vo;

public class UserVo {
	
	private Long no;
	private String name;
	private String gender;
	private String id;
	private String password;
	private String hint;
	private String answer;
	private String phone;
	private String mileage;
	private String birth;
	private Long typeNo;
	
	public Long getType_no() {
		return typeNo;
	}
	public void setTypeNo(Long typeNo) {
		this.typeNo = typeNo;
	}
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHint() {
		return hint;
	}
	public void setHint(String hint) {
		this.hint = hint;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Override
	public String toString() {
		return "UserVo [no=" + no + ", name=" + name + ", gender=" + gender + ", id=" + id + ", password=" + password
				+ ", hint=" + hint + ", answer=" + answer + ", phone=" + phone + ", mileage=" + mileage + ", birth="
				+ birth + "]";
	}
	
	

}
