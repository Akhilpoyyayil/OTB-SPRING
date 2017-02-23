package com.services;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.been.SignUpBeen;
import com.dbutil.DBConnection;

public class SignUpService extends DBConnection
{
	PreparedStatement ps=null;
	String query=null;
	int ret=-1;
	//to register a user
	public int registerUser(SignUpBeen sb)
	{
		System.out.println("signup serv");
		query="insert into tbl_user (vchr_user_name,vchr_user_mobile,vchr_user_email,vchr_user_password) values(?,?,?,?);";
		try 
		{
			ps=super.createDbConnection().prepareStatement(query);
			ps.setString(1, sb.getStr_name());
			ps.setString(2, sb.getStr_mobile());
			ps.setString(3, sb.getStr_email());
			ps.setString(4, sb.getStr_password());
			ret=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
}
