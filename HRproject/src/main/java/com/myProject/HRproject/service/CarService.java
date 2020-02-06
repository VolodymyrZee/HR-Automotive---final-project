package com.myProject.HRproject.service;

import java.util.List;
import java.util.Optional;

import com.myProject.HRproject.model.Cars;
import com.myProject.HRproject.model.Users;


public interface CarService {

	
	Optional<Cars> findByCarId(long id);
	void deletecars(long id);
	void savecars(Cars cars);
	void updatecars(Cars cars);
	List<Cars> findAll();
	Optional<Cars> findByMake(String make);
	List<Cars> findByModel(String model);
	List<Cars> findAllByCarUser(Users carUser);
}
	

