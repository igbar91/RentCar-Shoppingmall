package DBControl;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class RentcarDAO {
	 Connection conn;//DB연결(id, password, url)
	 PreparedStatement pstmt;//SQL실행
	 ResultSet rs;//실행된 SQL 결과 저장
	
	 
//데이터베이스 연결 
public void getConnection(){
	 try {
		 Context initctx = new InitialContext();
		 
		 //가상의 경로, lookup()
		 Context envctx = (Context) initctx.lookup("java:comp/env");
		 
		 DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
		 conn = ds.getConnection();//
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
}

	//자동차 전체 중에서 최신 내용 3대만 불러오기
	public Vector<CarListBean> getSelectCar(){
		
		Vector<CarListBean> v = new Vector<CarListBean>();
		
		getConnection();
		
		try {
			String sql = "select * from CarRent order by no desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			int count = 0;
			 			
			while(rs.next()) { 	 				
				CarListBean bean = new CarListBean(); 				
				bean.setNo(rs.getInt(1)); 
				bean.setName(rs.getString(2));
				bean.setCategory(rs.getInt(3));
				bean.setPrice(rs.getInt(4));
				bean.setUserpeople(rs.getInt(5));
				bean.setCompany(rs.getString(6));
				bean.setImg(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				v.add(bean); 				 				
				++count; 				
				if(count >= 3) break; 				
			}
			conn.close(); 			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v; 		
	}

	//해당 카테고리 자동차만 불러오기: 소형, 중형, 대형중에서
	public Vector<CarListBean> getCategoryCar(int category){
		Vector<CarListBean> v = new Vector<CarListBean>();
		CarListBean bean = null;
		
		getConnection();
		
		try {
			String sql = "select * from CarRent where category = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, category); 
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bean = new CarListBean();
				
				bean.setNo(rs.getInt(1)); 
				bean.setName(rs.getString(2));
				bean.setCategory(rs.getInt(3));
				bean.setPrice(rs.getInt(4));
				bean.setUserpeople(rs.getInt(5));
				bean.setCompany(rs.getString(6));
				bean.setImg(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				v.add(bean); 				
			}
			conn.close(); 			
		}catch(Exception e) {
			e.printStackTrace();
		} 		
		return v;
	}

	//
	public  Vector<CarListBean>	getAllCar(){
		Vector<CarListBean> v = new Vector<CarListBean>();
		
		CarListBean bean = null;
		getConnection();
		
		try {
			String sql = "select * from CarRent";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bean = new CarListBean();
				
				bean.setNo(rs.getInt(1)); 
				bean.setName(rs.getString(2));
				bean.setCategory(rs.getInt(3));
				bean.setPrice(rs.getInt(4));
				bean.setUserpeople(rs.getInt(5));
				bean.setCompany(rs.getString(6));
				bean.setImg(rs.getString(7));
				bean.setInfo(rs.getString(8));
			
				v.add(bean);
			} 			
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		 return v;
	}
	
	//자동차 한대의 모든 정보를 불러오기
	
	//자동차 한 대의 모든 정보를 불러오기
 	public CarListBean getOneCar(int no){
 		CarListBean bean = new CarListBean();
 		
 		getConnection();
 		
 		try {
 			String sql = "select * from CarRent where no = ?";
 			pstmt = conn.prepareStatement(sql); 
 			pstmt.setInt(1, no); 
 			
 			rs = pstmt.executeQuery();
 			
 			if(rs.next()) {
 				
 				bean.setNo(rs.getInt(1)); 
 				bean.setName(rs.getString(2));
 				bean.setCategory(rs.getInt(3));
 				bean.setPrice(rs.getInt(4));
 				bean.setUserpeople(rs.getInt(5));
 				bean.setCompany(rs.getString(6));
 				bean.setImg(rs.getString(7));
 				bean.setInfo(rs.getString(8)); 						
 			}
 			conn.close();
 		}catch(Exception e) {
 			e.printStackTrace();
 		} 				
 		return bean;
 	}
 	

 	//자동차 예약 정보 입력 	
 	public void setReserveCar(CarReserveBean rbean){
 		getConnection();
 		
 		try {
 			String sql = "insert into carreserve values(reserve_seq.nextval, ?,?,?,?,?,?,?,?,?)";  
 			pstmt =conn.prepareStatement(sql);
 			
 			pstmt.setString(1, rbean.getId());
 			pstmt.setInt(2, rbean.getNo()); 
 			pstmt.setInt(3, rbean.getQty()); 
 			pstmt.setInt(4, rbean.getDday()); 
 			pstmt.setString(5, rbean.getRday()); 
 			pstmt.setInt(6, rbean.getUsein());
 			pstmt.setInt(7, rbean.getUsewifi());
 			pstmt.setInt(8, rbean.getUseseat());
 			pstmt.setInt(9, rbean.getUsenavi());
 			
 			pstmt.executeUpdate();
 			
 			conn.close(); 			
 		}catch(Exception e) {
 			e.printStackTrace();
 		}
 		
 	}
 	
 //***********************CAR RESERVE CHECK**************************************	
 //***********************CAR RESERVE CHECK**************************************	여기부터 
 //***********************CAR RESERVE CHECK**************************************	
 	//회원의 예약정보 불러오기
 	public Vector<CarViewBean> getAllReserve(String id){		
 		Vector<CarViewBean> v = new Vector<CarViewBean>(); 		
 		CarViewBean bean = null;  		
 		
 		getConnection();
 		
 		
 		try {
 			String sql = "select * from CarRent natural join carreserve " + 
 					" where sysdate <= to_date(rday, 'YYYY-MM-DD') " + 
 					" AND id = ?";
 			pstmt = conn.prepareStatement(sql); 			
 			pstmt.setString(1, id); 
 			
 			rs= pstmt.executeQuery();
 			
 			while(rs.next()){
 				bean = new CarViewBean();
 				
 				bean.setName(rs.getString(2));
 				bean.setPrice(rs.getInt(4));
 				bean.setImg(rs.getString(7));
 				bean.setQty(rs.getInt(11));
 				bean.setDday(rs.getInt(12));
 				bean.setRday(rs.getString(13));
 				bean.setUsein(rs.getInt(14));
 				bean.setUsewifi(rs.getInt(15));
 				bean.setUseseat(rs.getInt(16));
 				bean.setUsenavi(rs.getInt(17)); 
 				
 				v.add(bean);
 			} 			
 		}catch(Exception e) {
 			e.printStackTrace();
 		} 		
 		return v; 		
 	}
 	

 		
	//차량 예약 삭제 	
 	public void carRemoveReserve(String id, String rday){
 		getConnection();
 		
 		try {
 			String sql = "delete from carreserve where id=? and rday=?";
 			pstmt = conn.prepareStatement(sql);
 			
 			pstmt.setString(1, id);
 			pstmt.setString(2, rday); 
 			
 			pstmt.executeUpdate();
 			
 			conn.close();
 			
 		}catch(Exception e) {
 			e.printStackTrace();
 		} 		
 	}
 	
 	
 	
 	
 	
 	
 	
 	
 
}
