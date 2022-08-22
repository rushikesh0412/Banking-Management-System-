package com.abhishek.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.abhishek.Dao.DB_Connection;

public class Create_User 
{
	public void insert_values(String full_name, String email, String gender, int current_balance)
	{
		DB_Connection db = new DB_Connection();
		Connection con = db.get_connection();
		PreparedStatement ps = null;
		
		try
		{
			ps = con.prepareStatement("INSERT INTO users (full_name,email,gender,current_balance) VALUES (?,?,?,?);");
			ps.setString(1, full_name);
			ps.setString(2, email);
			ps.setString(3, gender);
			ps.setInt(4, current_balance);
			
			int status = ps.executeUpdate();
			
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
