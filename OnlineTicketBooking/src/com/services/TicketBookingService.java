package com.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.been.TicketBookingBeen;
import com.dbutil.DBConnection;


public class TicketBookingService extends DBConnection {

	PreparedStatement ps=null;
	String query=null;
	int ret=-1;
	ResultSet rs=null;
	public TicketBookingService()
	{
		super();
	}
	//to get all film 
	public List<TicketBookingBeen>  getFilimNames() {
		List<TicketBookingBeen> lists = new ArrayList<TicketBookingBeen>();
		query="SELECT distinct vchr_schedule_film FROM db_otb_cnc.tbl_schedule;";
		try 
		{
			ps=super.createDbConnection().prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next())
			{
				lists.add(new TicketBookingBeen(rs.getString("vchr_schedule_film")));
//				System.out.println(rs.getString("vchr_schedule_film"));
//				TicketBookingBeen list=new TicketBookingBeen();
//				list.setStr_film(rs.getString("vchr_schedule_film"));
//				lists.add(list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		for(TicketBookingBeen eb:lists)
        {
        	System.out.println("vg");
        	eb.getStr_film();
        }
		return (lists);
	}

}
