package com.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.been.TicketBookingBeen;
import com.services.TicketBookingService;

@Controller
public class TicketBookingController 
{
//	@RequestMapping(value="ticketbookingpage" ,method= RequestMethod.GET)
//	public ModelAndView ticket(@ModelAttribute Task task)
//	{
//		TicketBookingService tb=new TicketBookingService();
//		task=tb.getFilimNames();
//		 ModelAndView model = new ModelAndView("edit");
//	     model.addObject("task", task);
//	     return model;
//		
//	}
	@RequestMapping(value="ticket_booking" ,method= RequestMethod.GET)  
    public ModelAndView viewemp(Model model, @ModelAttribute("sign") TicketBookingBeen sign){  
		TicketBookingService tb=new TicketBookingService();
		List<TicketBookingBeen> list=new ArrayList<TicketBookingBeen>();
        list=tb.getFilimNames();  
        for(TicketBookingBeen eb:list)
        {
        	System.out.println("vg");
        	eb.getStr_film();
        }
        return new ModelAndView("ticket_booking","list",list);  
    }  
}
