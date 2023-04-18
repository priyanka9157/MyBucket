package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.ProductBean;

@Repository
public class CategoryDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addCategory(CategoryBean categoryBean) {
		String insertQuery = "insert into category (categoryName,deleted) values (?,?) ";

		stmt.update(insertQuery, categoryBean.getCategoryName(), false);// insert //update //delete
	}

	public List<CategoryBean> getAllCategory() {

		String selectQuery = "select * from category";

		List<CategoryBean> list = stmt.query(selectQuery, new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));

		// c1 c2 c3

		return list;
	}

	public void deleteCategory(Integer categoryId, boolean currentStatus) {
		currentStatus = !currentStatus;
		String updateQuery = "update category set deleted = ? where categoryId = ?";
		stmt.update(updateQuery, currentStatus, categoryId);

	}

	public CategoryBean getCategoryById(Integer categoryId) {
		CategoryBean categoryBean = null;

		try {
			categoryBean = stmt.queryForObject("select * from category where categoryId = ?",
					new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class), new Object[] { categoryId });
		} catch (Exception e) {
			System.out.println("CategoryDao :: getCategoryById()");
			System.out.println(e.getMessage());

		}
		// list

		return categoryBean;
	}

	public void updateCategory(CategoryBean categoryBean) {
		String updateQuery = "update category set categoryName  = ? where categoryId = ? ";
		stmt.update(updateQuery, categoryBean.getCategoryName(), categoryBean.getCategoryId());
	}

	public List<CategoryBean> getlist1() {
		return stmt.query(
				" select c.*,p.productName,p.price from category c,product p where c.deleted = false and c.categoryId = p.categoryId and c.categoryId = 3 order by c.categoryId desc;",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
	}

	public List<CategoryBean> getlist2() {
		return stmt.query(
				" select c.*,p.productName,p.price from category c,product p where c.deleted = false and c.categoryId = p.categoryId and c.categoryId = 4 order by c.categoryId desc;",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
	}
	

	public List<CategoryBean> getlist3() {
		return stmt.query(
				" select c.*,p.productName,p.price from category c,product p where c.deleted = false and c.categoryId = p.categoryId and c.categoryId = 5 order by c.categoryId desc;",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
	}

	public List<CategoryBean> getlist4() {
		return stmt.query(
				" select c.*,p.productName,p.price from category c,product p where c.deleted = false and c.categoryId = p.categoryId and c.categoryId = 6 order by c.categoryId desc;",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
	}

	public List<CategoryBean> getlist5() {
		return stmt.query(
				" select c.*,p.productName,p.price from category c,product p where c.deleted = false and c.categoryId = p.categoryId and c.categoryId = 7 order by c.categoryId desc;",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
	}

	
	

}