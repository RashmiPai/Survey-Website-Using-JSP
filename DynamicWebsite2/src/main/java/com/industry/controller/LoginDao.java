package com.industry.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao 
{

	static String url = "jdbc:mysql://localhost:3306/website";
	static String username = "root";
	static String pwd = "password3";
	
		public static boolean validate(String user_id, String pass_word)
		{
			boolean status =false;
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, pwd);
			
			String logq="select * from user where username = ? and password = ?";
			
			PreparedStatement ps=con.prepareStatement(logq);
			ps.setString(1, user_id);
			ps.setString(2, pass_word);
			
			ResultSet rs = ps.executeQuery();
			status=rs.next();
			
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
			
			return status;	
			
			
		}

	}

