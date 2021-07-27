package com.pack.debtor.dao;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import com.pack.debtor.model.Bank;


@Component
public class BankDao {

	@Autowired
	private DataSource dataSource;

	/*
	 * public void setDs(DataSource dataSource) { this.dataSource = dataSource; }
	 */

	public int insert(Bank b) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert.update("insert into bank1(accountnumber,bankname,address)  values(?,?,?)",
				b.getAccountnumber(),b.getBankname(),b.getAddress());
		return i;
	}

	public List<Bank> viewAll() {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		String sql = "SELECT * from bank1";

		List<Bank> employees = insert.query(sql, new BeanPropertyRowMapper<Bank>(Bank.class));
		return employees;

	}

	public Bank getEmpById(int id) {
		JdbcTemplate obj = new JdbcTemplate(dataSource);
		String sql = "select * from bank1 where did=?";
		Bank bank = obj.queryForObject(sql, new BeanPropertyRowMapper<Bank>(Bank.class),  new Object[] { id });
		return bank;

	}

	public int modify(Bank b) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert
				.update("update bank1 set accountnumber='" + b.getAccountnumber() +  "',bankname='"
						+ b.getBankname() + "',address='" + b.getAddress()+ "' where did=" + b.getDid());
		return i;
	}

	public int delete(int did) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert.update("delete from bank1 where did=" + did);
		return i;


}

}
