package com.abhishek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection 
{
	public Connection get_connection()
	{
		Connection con = null;
		try
		{
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection("jdbc:postgresql://localhost/basic_banking_system","postgres","Rushi@0412");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
