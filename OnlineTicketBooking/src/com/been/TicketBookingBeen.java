package com.been;

import java.sql.Date;

public class TicketBookingBeen {
	
	private String str_film;
	private String str_date;
	private String str_time;
	public TicketBookingBeen()
	{
		
	}
	public TicketBookingBeen(String str_film)
	{
		this.str_film=str_film;
	}
	public TicketBookingBeen(String str_film,String str_date,String str_time)
	{
		this.str_date=str_date;
		this.str_film=str_film;
		this.str_time=str_time;
	}
	public String getStr_film() {
		return str_film;
	}
	public void setStr_film(String str_film) {
		this.str_film = str_film;
	}
	public String getStr_date() {
		return str_date;
	}
	public void setStr_date(String str_date) {
		this.str_date = str_date;
	}
	public String getStr_time() {
		return str_time;
	}
	public void setStr_time(String str_time) {
		this.str_time = str_time;
	}
	
}
