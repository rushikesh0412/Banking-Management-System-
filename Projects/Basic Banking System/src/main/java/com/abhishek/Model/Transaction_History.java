package com.abhishek.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abhishek.Dao.DB_Connection;
import com.abhishek.Dao.TransactionHistoryBean;

public class Transaction_History 
{
	public void insert_values(String sender, String receiver, int amount)
	{
		DB_Connection db = new DB_Connection();
		Connection con = db.get_connection();
		PreparedStatement ps = null;
		
		try
		{
			ps = con.prepareStatement("INSERT INTO history (sender,receiver,amount) VALUES (?,?,?);");
			ps.setString(1, sender);
			ps.setString(2, receiver);
			ps.setInt(3, amount);
			
			int status = ps.executeUpdate();
			
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List<TransactionHistoryBean> get_values()
	{
		DB_Connection db = new DB_Connection();
		Connection con = db.get_connection();
		Statement stmt = null;
		ResultSet rs = null;
		
		List<TransactionHistoryBean> list = new ArrayList<TransactionHistoryBean>();
		
		try
		{
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM history;");
			
			while(rs.next())
			{
				TransactionHistoryBean thb = new TransactionHistoryBean();
				
				thb.setTransaction_id(rs.getInt("transaction_id"));
				thb.setSender(rs.getString("sender"));
				thb.setReceiver(rs.getString("receiver"));
				thb.setAmount(rs.getInt("amount"));
				thb.setDate_time(String.valueOf(rs.getTimestamp("date_time")));
				
				list.add(thb);
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
