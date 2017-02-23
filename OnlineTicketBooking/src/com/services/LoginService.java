package com.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.been.SignUpBeen;
import com.dbutil.DBConnection;

public class LoginService extends DBConnection
{	
	PreparedStatement ps=null;
	String query=null;
	int ret=-1;
	ResultSet rs=null;
	//to login a user
	public int loginUser(SignUpBeen ss) 
	{
		System.out.println("login serv");
		query="SELECT * FROM db_otb_cnc.tbl_user where vchr_user_email=? or vchr_user_mobile=? and vchr_user_password=?;";
		try 
		{
			ps=super.createDbConnection().prepareStatement(query);
			ps.setString(1, ss.getStr_username());
			ps.setString(2, ss.getStr_username());
			ps.setString(3, ss.getStr_password());
			rs=ps.executeQuery();
			if (rs.next())
			{
				System.out.println(ss.getStr_username()+"="+rs.getString("vchr_user_email"));
				System.out.println(ss.getStr_password()+"="+rs.getString("vchr_user_password"));
				if(rs.getString("vchr_user_email").equals(ss.getStr_username() )|| rs.getString("vchr_user_mobile").equals(ss.getStr_username()) && rs.getString("vchr_user_password").equals(ss.getStr_password()))
				{
					System.out.println("login");
					return 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}
