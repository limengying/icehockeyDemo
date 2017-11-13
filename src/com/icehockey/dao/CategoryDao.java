package com.icehockey.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.icehockey.entity.Category;
import com.icehockey.util.DBUtil;

public class CategoryDao {
	Category category = null;
	DBUtil util = new DBUtil();
	private ResultSet rs = null;
	private Statement statement = null;
	private Connection conn = null;
	private PreparedStatement preparedStatement = null;

	public Category getCategoryByCategoryId(String categoryValue) {//通过CategoryValue获取角色对象
		String sql = "SELECT * FROM Category where remark=?;";
		try {
			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, categoryValue);
			rs = preparedStatement.executeQuery();
			if (rs.next()) {
				 int categoryId=rs.getInt("categoryId"); // 类别编号
				 String categoryName=rs.getString("categoryName"); // 类别名称
				 String remark=rs.getString("remark"); // 备注
				 category=new Category(categoryId, categoryName, remark);
				 return category;
			}else{
				System.out.println("该角色不存在");
				category=null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return category;
	}
}
