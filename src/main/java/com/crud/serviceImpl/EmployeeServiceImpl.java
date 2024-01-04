package com.crud.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.model.Employee;
import com.crud.repository.EmployeeRepository;
import com.crud.serviceI.EmployeeServiceI;

@Service
public class EmployeeServiceImpl implements EmployeeServiceI
{
	@Autowired
	EmployeeRepository er;

	@Override
	public void saveEmployee(Employee e) 
	{
		er.save(e);
		
	}

	@Override
	public void loginCheck(String un, String ps) 
	{
		er.findAllByUnameAndPassword(un, ps);
		
		
	}

	@Override
	public Iterable<Employee> displayAll() 
	{
		return er.findAll();
	}

	@Override
	public Employee editData(int id) 
	{
		return er.findAllByEmpId(id);
		
	}
	

}
