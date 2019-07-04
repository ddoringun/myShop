package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import product.DBConnectionMgr;

public class ProductDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	DBConnectionMgr mgr;
	
	public ProductDAO() {
		mgr = DBConnectionMgr.getInstance();
	}
	
	public void insert(ProductDTO dto) throws Exception {
		
		con = mgr.getConnection();
		String sql = "insert into product values(?,?,?,?)";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getTitle());
		ps.setString(3, dto.getContent());
		ps.setInt(4, dto.getPrice());
		
		ps.executeUpdate();
		
	} // insert end
	
	public ProductDTO update(ProductDTO dto) {
	      
	      try {
	         con = mgr.getConnection();
	         String sql = "update product set id = ?, name = ?, content = ?, price = ? where id = ?";
	         ps = con.prepareStatement(sql);
	         
	         ps.setString(1, dto.getId());
	         ps.setString(2, dto.getTitle());
	         ps.setString(3, dto.getContent());
	         ps.setInt(4, dto.getPrice());
	         
	         ps.executeUpdate();
	         
	      }
	      
	      catch (Exception e) {
	    	  e.printStackTrace();
	      }
	      
	      return dto;
	   }
	
	public ProductDTO delete(String id) {
		ProductDTO dto = new ProductDTO();
		try {
			con = mgr.getConnection();
			String sql = "delete from product where id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public ProductDTO select(String id) {
		ProductDTO dto = new ProductDTO();
		try {
			con = mgr.getConnection();
			String sql = "select * from product where id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new ProductDTO();
				dto.setId(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setPrice(rs.getInt(4));
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} // select while end
		return dto;
	} // select end;
	
	public ArrayList<ProductDTO> selectAll(){
		
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		ProductDTO dto = null;
		
		try {
			con = mgr.getConnection();
			String sql = "select * from product";
			
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				dto = new ProductDTO();
				
				dto = new ProductDTO();
				String id = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				int price = rs.getInt(4);
				
				dto.setId(id);
				dto.setTitle(title);
				dto.setContent(content);
				dto.setPrice(price);
				
				list.add(dto);
				
			} // selectAll while end
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	} // selectAll end
}























