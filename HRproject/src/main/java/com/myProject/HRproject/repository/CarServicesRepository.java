package com.myProject.HRproject.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.myProject.HRproject.model.CarServices;
import com.myProject.HRproject.model.Cars;



public interface CarServicesRepository extends JpaRepository<CarServices, Long >{
	
	CarServices findByServiceDescription(String serviceDescription);
	@Query("FROM CarServices WHERE serviceDescription=?1")
	Optional<CarServices> findServiceDescription(String serviceDescription);
	
	@Query("FROM CarServices WHERE id=?1")
	List<CarServices> findByCarServicesId(long id);
	
	@Query("FROM CarServices WHERE  serviceCompleted=?1")
	List<CarServices> findByServiceCompleted(Boolean serviceCompleted);
	
	List<CarServices> findAllByServiceCar(Cars serviceCar);
}
