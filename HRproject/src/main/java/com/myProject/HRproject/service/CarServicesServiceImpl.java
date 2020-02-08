package com.myProject.HRproject.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myProject.HRproject.model.CarServices;
import com.myProject.HRproject.model.Cars;


import com.myProject.HRproject.repository.CarServicesRepository;

@Service
@Transactional
public class CarServicesServiceImpl  implements CarServicesService{
	
	@Autowired
	private CarServicesRepository carServicesRepository;

	@Override
	public Optional<CarServices> findByCarServicesId(long id) {
		
		return carServicesRepository.findById(id);
	}

	@Override
	public void deletecarServices(long id) {
		
		carServicesRepository.deleteById(id);
	}

	@Override
	public void savecarServices(CarServices carServices) {
		carServicesRepository.save(carServices);
		
	}

	@Override
	public void updatecarServices(CarServices carServices) {
		CarServices carService=findByCarServicesId(carServices.getId()).get();
		if(carService !=null) {
			carService.setServiceCompleted(carServices.isServiceCompleted());
			carService.setServiceDescription(carServices.getServiceDescription());
			
	}
		
	}

	@Override
	public List<CarServices> findAll() {
		
		return carServicesRepository.findAll();
	}

	@Override
	public Optional<CarServices> findServiceDescription(String serviceDescription) {
		
		return carServicesRepository.findServiceDescription(serviceDescription);
	}

	@Override
	public List<CarServices> findByServiceCompleted(Boolean serviceCompleted) {
		
		return carServicesRepository.findByServiceCompleted(serviceCompleted);
	}

	@Override
	public List<CarServices> findAllByCarServices(Cars serviceCar) {
		
		return carServicesRepository.findAllByServiceCar(serviceCar);
	}
	
	

}



