package MemberControl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;





public class MemberDAO {
	/* 커넥션풀(server.xml)을 실행했기때문에 이게 필요없음.
	String Driver = "oracle.jdbc.OracleDriver";
	String id = "yeonyi";
	String pass = "ezen1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	*/
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public void getConnection() throws ClassNotFoundException, SQLException {
	/*	Class.forName(Driver);
		conn = DriverManager.getConnection(url, id, pass);*/
		
		try {
			Context initctx = new InitialContext();
			Context envctx = (Context) initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
			conn = ds.getConnection();
			
		}catch(Exception e ) {
			e.printStackTrace();
		

		}		
	}
	
	public void insertMember(MemberBean mbean) {
		try {
		getConnection();
	
		String sql = "insert into carMember values(?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getAge());
		
		pstmt.executeUpdate();
		
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
		
	}
	
	//모든 회원 정보보기 화면
	public Vector<MemberBean> allSelectMember()  {
		Vector<MemberBean> v = new Vector<>();  
		try {
		getConnection();			
	
		String sql = "select * from carMember";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			MemberBean bean = new MemberBean(); 
				bean.setId(rs.getString(1));//id
				bean.setPass(rs.getString(2));//pass
				bean.setEmail(rs.getString(3));//email
				bean.setTel(rs.getString(4));//tel
				bean.setAge(rs.getString(5));//age
				
				
				v.add(bean);//순서대로 데이터가 저장됩니다.				
			}
			conn.close();			
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return v;		
	}	
	
	
	//한 사람의  회원 정보보기 화면
	public MemberBean oneSelectMember(String id){
		MemberBean bean = new MemberBean(); 
		
		try {
			getConnection();
			
			String sql = "select * from carMember where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			
			if(rs.next()){
				bean.setId(rs.getString(1));//id
				bean.setPass(rs.getString(2));//pass1
				bean.setEmail(rs.getString(3));//email
				bean.setTel(rs.getString(4));//tel		
	     		bean.setAge(rs.getString(5));//age
								
			}
			conn.close();			
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return bean;
		
	}
	
	
 	
 	//2020-06-22
 	//sql DB에 저장된 회원목록을 불러와서
 	//ID와 password가 일치하면 로그인 시키고
 	//아니면 로그인시키지않음
 	public int getMember(String id, String pass){
		int result = 0;//처음이면 회원이 없음. 
 		
 		
 		try {
 			getConnection();//DB 연결 루틴.
 			
 			String sql = "select count(*) from carMember where id=? and pass=?";
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, id);
 			pstmt.setString(2, pass); 
 			
 			rs = pstmt.executeQuery();
 			
 			if(rs.next()) {
 				result = rs.getInt(1);// 0 또는 1값이 저장됩니다.
 			}
 			
 		}catch(Exception e) {
 			e.printStackTrace();
 		}
 		
 		return result; 		
 	}
 	
	//******************************************************************************************
 	//***************************패스워드 가져와서 리턴, 삭제*********************************************************	 	
 		 	//한명의 회원의 패스워드값을 리턴하는 메소드 작성
 			
 		
 		 	public MemberBean getOneUpdateBoard(String id) {
 				
 		 		MemberBean bean = new MemberBean();
 				
 				
 				try {
 					
 					getConnection();
 					
 					String sql = "select * from carMember where id=?";
 					pstmt = conn.prepareStatement(sql);
 					pstmt.setString(1, id);
 					rs = pstmt.executeQuery();
 					
 					if(rs.next()) {
 						bean.setId(rs.getString(1));//id
 						bean.setPass(rs.getString(2));//pass
 						bean.setEmail(rs.getString(3));//email
 						bean.setTel(rs.getString(4));//tel	
 						bean.setAge(rs.getString(5));//age
 					
 				
 				          
 				}
 				conn.close();
 				
 				}catch(Exception e){
 					e.printStackTrace();
 				}

 				return bean; 
 			}
 		 	
 		 	
 			//*****************************************************************
 			//update, delete할 때 필요한 패스워드값을 반환해주는 메소드  
 			public String getPass(String id){
 				
 				 
 				 String pass1 = "";
 				 
 				 try {
 					 
 					 getConnection();
 					 	String sql = "select pass from carMember where id=?";
 						pstmt = conn.prepareStatement(sql);
 						pstmt.setString(1, id);
 						rs = pstmt.executeQuery();
 						
 						if(rs.next()) {
 						pass1 = rs.getString(1);
 						
 						}
 					 
 					 
 					 
 				 }catch(Exception e) {
 					 e.printStackTrace();
 				 }
 				 
 				 
 				 return pass1;
 			 }
 			
 //*******************************************************************			
 			//하나의 게시글을 수정하는 메소드
 			public void MemberModify(MemberBean bean) {
 				
 				
 				try {
 					getConnection();
 					
 					String sql = "update carMember set email=?, tel=?, age=? where id=?";
 					pstmt = conn.prepareStatement(sql);
 					pstmt.setString(1, bean.getEmail());
 					pstmt.setString(2, bean.getTel());
 					pstmt.setString(3, bean.getAge());
 					
 					pstmt.setString(4, bean.getId());
 					
 					pstmt.executeUpdate();
 					
 					conn.close();
 					
 					
 				}catch(Exception e) {
 					e.printStackTrace();
 				}
 			}
  //*******************************************************************		
 			public void deleteBoard(String id) {
 				
 				 try {
 					 
 					 getConnection();
 					 String sql = "delete from carMember where id=?";
 						pstmt = conn.prepareStatement(sql);
 					
 						pstmt.setString(1, id);
 						
 						pstmt.executeUpdate();
 					 
 					 conn.close();
 				 }catch(Exception e) {
 					 e.printStackTrace();
 				 }
 				}
 			
 			
 		//개인 게시물 보기 	//Board+ PersonalData
 			//지움
 		
 					
 			
}//END

	
	