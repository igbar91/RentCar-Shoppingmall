package BoardControl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AdminDAO {

		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		
		public void getConnection() {
			try {
				Context initctx = new InitialContext();
				Context envctx = (Context) initctx.lookup("java:comp/env");
				DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
				conn = ds.getConnection();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	
	public Vector<BoardBean> getAllBoard(){
		Vector<BoardBean> vec = new Vector<BoardBean>();
		
		getConnection();
		
		try {
			String sql = "select * from carBoard order by ref desc, re_step asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardBean bean = new BoardBean();
				bean.setNum(rs.getInt(1));//sequence number
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadCount(rs.getInt(10));
				bean.setContent(rs.getString(11)); 
				
				vec.add(bean);//패키징한 데이터를 벡터에 저장
			}
			conn.close();
		}catch(Exception e ) {
			e.printStackTrace();
		}
		
		return vec;		
	}
}
