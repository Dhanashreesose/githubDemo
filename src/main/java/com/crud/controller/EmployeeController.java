package com.crud.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.model.Employee;
import com.crud.serviceI.EmployeeServiceI;

@Controller
public class EmployeeController 
{
	@Autowired
	EmployeeServiceI es;
	
	@RequestMapping("/")
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping("/register")
	public String registerPage()
	{
		return "register";
	}
	
	@RequestMapping("/registration")
	public String regSave(@ModelAttribute Employee e)
	{
		es.saveEmployee(e);
		return "login";
	}
	
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("uname") String un,@RequestParam("password") String ps,Model m)
	{
		es.loginCheck(un,ps);
		Iterable<Employee> list=es.displayAll();
		m.addAttribute("list",list);
		return "success";
	}
	
	@RequestMapping("/edit")
	public String editPage(@RequestParam("empId") int id,Model m)
	{
		Employee e=es.editData(id);
		m.addAttribute("data", e);
		return "update";
	}
	
}
