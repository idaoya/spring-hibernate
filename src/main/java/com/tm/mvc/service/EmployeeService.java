package com.tm.mvc.service;

import java.util.List;

import com.tm.mvc.model.Employee;

public interface EmployeeService {

	Employee findById(int id);
	
	void saveEmployee(Employee employee);
	
	void updateEmployee(Employee employee);
	
	void deleteEmployeeByEmployeeCode(String ssn);

	List<Employee> findAllEmployees(); 
	
	Employee findEmployeeByEmployeeCode(String id);

	boolean isEmployeeSsnUnique(Integer id, String ssn);
	
}
