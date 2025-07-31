package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.User1DTO;

// DAO(Data Access Object) : DB처리를 수행하는 객체 
public class User1DAO {
	
	// DAO는 기본 싱글톤
	private final static User1DAO INSTANCE = new User1DAO();	
	public static User1DAO getInstance() {
		return INSTANCE;
	}	
	private User1DAO() {}
	
	// 기본 CRUD 메서드
	public void insertUser1(User1DTO dto) {
	
		try {
			//Connection conn = DriverManager.getConnection(null, null, null);
			Context ctx = (Context) new InitialContext().lookup("java:comp/env");
			DataSource ds = (DataSource) ctx.lookup("jdbc/mingyupark1997");
			
			Connection conn = ds.getConnection();
			
			String sql = "INSERT INTO USER1 VALUES(?,?,?,?)";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getHp());
			psmt.setInt(4, dto.getAge());			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public User1DTO selectUser1(String user_id) {
		return null;
	}
	
	public List<User1DTO> selectAllUser1() {
		return null;
	}
	
	public void updateUser1(User1DTO dto) {
		
	}
	
	public void deleteUser1(String user_id) {
		
	}
}