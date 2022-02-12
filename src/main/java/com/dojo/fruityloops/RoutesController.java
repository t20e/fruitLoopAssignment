package com.dojo.fruityloops;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoutesController {
	    
	    @RequestMapping("/")
	    public String index(Model model) {
	        
	        ArrayList<Item> fruits = new ArrayList<Item>();
	        
	        // Add fruits your view model here
	        fruits.add(new Item("apple", .5));
	        fruits.add(new Item("Kiwi", 0.2));
	        fruits.add(new Item("Mango", 0.2));
	        fruits.add(new Item("Goji", 0.4));
	        fruits.add(new Item("Guava", 0.9));
	        
	        
//	        System.out.println(model);
	        model.addAttribute("fruits", fruits);
	        return "index.jsp";
	    }
	}