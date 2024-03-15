package member;

import java.util.Date;

//member 테이블의 데이터를 담을 때 사용할 Member 클래스
public class Member {
	private String id;
	private String name;
	private String password;
	private Date regDate;
	
	public Member(String id, String name, String password, Date regDate) {
		this.id=id;
		this.name=name;
		this.password=password;
		this.regDate=regDate;
	}
	
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public Date getRegDate() {
		return regDate;
	}
	public boolean matchPassword(String pwd) {
		return password.equals(pwd);
	}
}

