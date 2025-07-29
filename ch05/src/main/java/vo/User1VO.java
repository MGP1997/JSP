package vo;

public class User1VO {
	
	private String User_id;
	private String name;
	private String hp;
	private int age;
	public String getUser_id() {
		return User_id;
	}
	public void setUser_id(String user_id) {
		User_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "User1VO [User_id=" + User_id + ", name=" + name + ", hp=" + hp + ", age=" + age + "]";
	}
	
	
}
