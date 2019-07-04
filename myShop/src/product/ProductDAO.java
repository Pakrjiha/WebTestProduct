package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ProductDAO {

	DBConnectionMgr pool;
	Connection con;
	PreparedStatement ps;
	ResultSet rs;

	public ProductDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public void insert(ProductDTO dto) throws Exception {
		
		con = pool.getConnection();
		
		String sql = "insert into product values(default,?,?,?)";
		
		ps = con.prepareStatement(sql);
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setInt(3, dto.getPrice());

		ps.executeUpdate();

		ps.close();
		con.close();
	}
	
	public void update(int id, String content, int price) throws Exception {
		
		con = pool.getConnection();
		
		String sql = "update product set content = ?, price = ? where id = ?";
		ps = con.prepareStatement(sql);
		ps.setString(1, content);
		ps.setInt(2, price);
		ps.setInt(3, id);
		
		ps.executeUpdate();
		
		ps.close();
		con.close();
	}
	
	public void delete(ProductDTO dto) throws Exception {
		
		con = pool.getConnection();
		
		String sql = "delete from product where id = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, dto.getId());
		
		ps.executeUpdate();
		
		ps.close();
		con.close();
	}
	
	public ProductDTO select(ProductDTO dto) throws Exception {

		con = pool.getConnection();
		
		String sql = "select * from product where id = ?";
		
		ps = con.prepareStatement(sql);
		ps.setInt(1, dto.getId());
		rs = ps.executeQuery();
		
		if(rs.next()) {
			
			dto = new ProductDTO();
			
			int id = rs.getInt(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			int price = rs.getInt(4);
			
			dto.setId(id);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setPrice(price);
		}
		
		return dto;
	}
	

	public ArrayList<ProductDTO> selectAll() throws Exception {
		
		ProductDTO dto = null;
		
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		
		con = pool.getConnection();
		
		String sql = "select * from product";
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next()) {
			dto = new ProductDTO();
			
			int id = rs.getInt(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			int price = rs.getInt(4);
			
			dto.setId(id);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setPrice(price);
			list.add(dto);
			
		}
		
		ps.close();
		rs.close();
		con.close();
		
		return list;
		
		
	}
}
