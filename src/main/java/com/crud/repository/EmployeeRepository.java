package com.crud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.crud.model.Employee;


@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Integer> 
{
	public void findAllByUnameAndPassword(String un,String ps);

	public Employee findAllByEmpId(int empId);
	

}
