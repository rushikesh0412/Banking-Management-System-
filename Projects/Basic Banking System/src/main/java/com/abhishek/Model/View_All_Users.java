package com.abhishek.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abhishek.Dao.DB_Connection;
import com.abhishek.Dao.User_Bean;

public class View_All_Users 
{
	public List<User_Bean> get_values()
	{
		DB_Connection db = new DB_Connection();
		Connection con = db.get_connection();
		Statement stmt = null;
		ResultSet rs = null;
		
		List<User_Bean> list = new ArrayList<User_Bean>();
		
		try
		{
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM users;");
			
			while(rs.next())
			{
				User_Bean ub = new User_Bean();
				
				ub.setId(rs.getInt("id"));
				ub.setFull_name(rs.getString("full_name"));
				ub.setEmail(rs.getString("email"));
				ub.setGender(rs.getString("gender"));
				ub.setCurrent_balance(rs.getInt("current_balance"));
				
				list.add(ub);
			}
			rs.close();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
}
