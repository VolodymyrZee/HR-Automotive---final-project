package com.myProject.HRproject.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.myProject.HRproject.model.Cars;
import com.myProject.HRproject.model.Users;



public interface CarRepository extends JpaRepository<Cars, Long > {

	Cars findByMake(String make);
	@Query("FROM Cars WHERE make=?1")
	Optional<Cars> findMake(String make);
	
	@Query("FROM Cars WHERE model=?1  OR id=?1")
	List<Cars> findByCarId(long id);
	
	@Query("FROM Cars WHERE  model=?1")
	List<Cars> findByModel(String model);
	
	List<Cars> findAllByCarUser(Users carUser);
}
