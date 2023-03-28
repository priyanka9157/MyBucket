package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.AddressBean;
@Repository
public class AddressDao {

	@Autowired
	JdbcTemplate stmt;

	// add
	public void addAddress(AddressBean addressBean) {
		String insertQuery = "insert into address (userId,addressLine,landMark,pincode,city,state,deleted,defualtInd) values (?,?,?,?,?,?,?,?) ";

		stmt.update(insertQuery,addressBean.getUserId(),addressBean.getAddressLine(),addressBean.getLandMark(),addressBean.getPincode(),addressBean.getCity(),addressBean.getState(),false,false);// insert //update //delete
	}

	public  List<AddressBean> getAllAddress() {
		String selectQuery = "select * from address where deleted = false";

		List<AddressBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<AddressBean>(AddressBean.class));
		
		//c1 c2 c3 
		
		return list;
	
	}
	
	public void deleteAddress(Integer addressId) {
		String updateQuery = "update address set deleted = true where addressId = ?";
		stmt.update(updateQuery, addressId);
		
	}
	// list
	
	public AddressBean getAddressById(Integer addressId) {
		AddressBean addressBean = null;

		try {
			addressBean = stmt.queryForObject("select * from address where addressId = ?",
					new BeanPropertyRowMapper<AddressBean>(AddressBean.class), new Object[] { addressId });
		} catch (Exception e) {
			System.out.println("Addressdao :: AddressById");
			System.out.println(e.getMessage());
		}
		return addressBean;
	}

	
	

	// update

	// delete
}
