package com.EmpMgmt.pkg.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.EmpMgmt.pkg.Model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long >{

}
