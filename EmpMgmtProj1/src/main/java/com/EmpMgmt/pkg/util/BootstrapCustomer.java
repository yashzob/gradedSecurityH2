package com.EmpMgmt.pkg.util;

import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import com.EmpMgmt.pkg.repository.EmployeeRepository;

@Component
public class BootstrapCustomer {
	
	private final EmployeeRepository employeeRepository;
	
	
	public BootstrapCustomer(EmployeeRepository employeeRepository) {
		this.employeeRepository =employeeRepository;
	}
		}

