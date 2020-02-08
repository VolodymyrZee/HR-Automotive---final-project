package com.myProject.HRproject.service;

import java.util.List;
import java.util.Optional;

import com.myProject.HRproject.model.CarServices;
import com.myProject.HRproject.model.Cars;
import com.myProject.HRproject.model.Users;


public interface CarServicesService {

	Optional<CarServices> findByCarServicesId(long id);
	void deletecarServices(long id);
	void savecarServices(CarServices carServices);
	void updatecarServices(CarServices carServices);
	List<CarServices> findAll();
	Optional<CarServices> findServiceDescription(String serviceDescription);
	List<CarServices> findByServiceCompleted(Boolean serviceCompleted);
	List<CarServices> findAllByCarServices(Cars serviceCar);
	List<CarServices> findAllByCarServicesByUser(Users user);
}
	

