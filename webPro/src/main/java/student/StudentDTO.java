package student;

import java.util.Date;

//DAO (Data Access Object) Dao : DB에 접근 용도 클래스
//DTO (Data Transfer Object) Dto  :	Data를 전송하는 역할 클래스.
//									읽기getter, 설정setter
//VO (Value Object) Vo: Value을 보관. 읽기 전용getter
//									불변의 성격. 특징. hashCode() 오버라이딩, equals() 필요하면 Override.


public class StudentDTO {
	//field-data.객체가 소멸되지 않는 한 객체와 함께 존재.
	//[access modifier][modifier]리턴타입 변수명[=초기값];
	//private 타입 필드명;//학번
	private String stuNo; //학번 "0012345"
	private String stuName; //학생명
	private Date enrollmentDate; //입학일
	//private 타입 필드명;//입학일
	
	//constructor-필드초기화
	//[access modifier] 클래스명(파라미터리스트){}	
	public StudentDTO() {}
	public StudentDTO(String stuNo, String stuName, Date enrollmentDate) {
		this.stuNo=stuNo;
		this.stuName=stuName;
		this.enrollmentDate=enrollmentDate;
	}
	
	//method-기능.동작에 해당하는 실행 블록.
	//호출한 곳으로부터 매개값을 받아 실행에 이용하고 실행후 결과값을 호출한 곳으로 리턴할 수 있다.
	//[access modifier] 리턴타입 메서드명(파라미터리스트){}
	//getter
	public String getStuNo() {
		return this.stuNo;
	}
	public String getStuName() {
		return this.stuName;
	}
	public Date getEnrollmentDate() {
		return this.enrollmentDate;	
	}
	
	//setter
	public void setStuNo(String stuNo) {
		this.stuNo=stuNo;
	}
	public void setStuName(String stuName) {
		this.stuName=stuName;
	}
	public void setEnrollmentDate(Date enrollmentDate) {
		this.enrollmentDate=enrollmentDate;
	}
	@Override
	public String toString() {
		return "학번="+stuNo+" / 학생명="+stuName+" / 입학일="+this.enrollmentDate;
	}
}
