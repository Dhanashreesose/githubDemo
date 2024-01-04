package com.crud.serviceI;

import com.crud.model.Employee;

public interface EmployeeServiceI {

	void saveEmployee(Employee e);

	void loginCheck(String un, String ps);

	Iterable<Employee> displayAll();

	Employee editData(int id);

}
