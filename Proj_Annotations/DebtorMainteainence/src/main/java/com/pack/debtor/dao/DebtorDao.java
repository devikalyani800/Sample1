package com.pack.debtor.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pack.debtor.model.Debtor;

@Component
public class DebtorDao {

	@Autowired
	private DataSource dataSource;

	/*
	 * public void setDs(DataSource dataSource) { this.dataSource = dataSource; }
	 */

	public int insert(Debtor e) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert.update("insert into debtor1(name,address1,email,phone)  values(?,?,?,?)",
				e.getName(), e.getAddress1(),e.getEmail(), e.getPhone());

		return i;
	}

	public List<Debtor> viewAll() {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		String sql = "SELECT * from debtor1";

		List<Debtor> employees = insert.query(sql, new BeanPropertyRowMapper<Debtor>(Debtor.class));
		return employees;

	}

	public Debtor getEmpById(int id) {
		JdbcTemplate obj = new JdbcTemplate(dataSource);
		String sql = "select * from debtor1 where did=?";
		Debtor debtor = obj.queryForObject(sql, new BeanPropertyRowMapper<Debtor>(Debtor.class),  new Object[] { id });
		return debtor;

	}

	public int modify(Debtor e) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert
				.update("update debtor1 set name='" + e.getName() +  "',address1='"
						+ e.getAddress1() + "',email='" + e.getEmail() +"',phonenumber ='" + e.getPhone() + "' where did=" + e.getDid());
		return i;
	}

	public int delete(int did) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert.update("delete from debtor1 where did=" + did);
		return i;

	}
}
