package model;

public class Emp {
	private String id;
	private String name;
	private String gender;
	private String hobby;
	private int salary;
	
	// 날짜이지만 문자열로 처리 (java.sql.date)
	private String hiredate;
	
	// getter, setter, 매개변수 없는 생성자 생성
	// toString Override
	
	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", gender=" + gender + ", hobby=" + hobby + ", salary=" + salary
				+ ", hiredate=" + hiredate + "]";
	}

	public Emp() {
		System.out.println("Emp 생성자 호출 완료");
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getHiredate() {
		return hiredate;
	}

	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
}
