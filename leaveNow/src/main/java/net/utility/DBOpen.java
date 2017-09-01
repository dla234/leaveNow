package net.utility;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.stereotype.Component;

@Component
public class DBOpen {
	
	public DBOpen() {
		System.out.println("--- DBOpen() 객체 생성됨...");
	}// Constructor end

	public Connection getConnection() {
		//1) 오라클 데이터베이스 연결 정보
		String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 127.0.0.1
		String user = "java0314";
		String password = "1234";
		String driver = "oracle.jdbc.driver.OracleDriver"; // .jar 라이브러리
		// ojdbc6.jar
		
		/*
		// My-SQL
		String url      = "jdbc:mysql://localhost:3306/myjava";
	    String user     = "root";
	    String password = "1234";
	    String driver   = "org.gjt.mm.mysql.Driver";
		
		*/
		
		//데이터 베이스 연결
		Connection con = null;

		try {
			// 2) 드라이버 로딩()
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);

		}catch (Exception e) {
			System.out.println("DB 연결 실패 : "+e);
			e.printStackTrace();
		}
		
		return con;
	}//end
}//class end
