package com.abhishek.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.abhishek.Dao.DB_Connection;
import com.abhishek.Dao.User_Bean;

public class Edit_Values 
{
	public User_Bean get_value_of_user(int id)
	{
		DB_Connection db = new DB_Connection();
		Connection con = db.get_connection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		User_Bean ub = new User_Bean();
		try
		{
			ps = con.prepareStatement("SELECT * FROM users WHERE id = ?;");
			ps.setInt(1, id);
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				ub.setId(rs.getInt("id"));
				ub.setFull_name(rs.getString("full_name"));
				ub.setEmail(rs.getString("email"));
				ub.setGender(rs.getString("gender"));
				ub.setCurrent_balance(rs.getInt("current_balance"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ub;
	}
	
	public void update_balance(int sender_account_id, int receiver_account_id, int amount)
	{
		DB_Connection db = new DB_Connection();
		Connection con = db.get_connection();
		PreparedStatement ps = null;
		Edit_Values ev = new Edit_Values();
		User_Bean ub = ev.get_value_of_user(sender_account_id);
		User_Bean ub2 = ev.get_value_of_user(receiver_account_id);
		if(ub.getCurrent_balance() > amount)
		{
			try
			{
				int updated_balance = ub.getCurrent_balance() - amount;
				ps = con.prepareStatement("UPDATE users SET current_balance = ? where id = ?");
				ps.setInt(1, updated_balance);
				ps.setInt(2, sender_account_id);
				int i = ps.executeUpdate();
				
				int updated_balance2 = ub2.getCurrent_balance() + amount;
				ps = con.prepareStatement("UPDATE users SET current_balance = ? where id = ?");
				ps.setInt(1, updated_balance2);
				ps.setInt(2, receiver_account_id);
				int j = ps.executeUpdate();
				
				con.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}
}
