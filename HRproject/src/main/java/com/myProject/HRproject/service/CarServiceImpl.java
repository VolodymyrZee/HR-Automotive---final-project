package com.myProject.HRproject.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myProject.HRproject.model.Cars;
import com.myProject.HRproject.model.Users;
import com.myProject.HRproject.repository.CarRepository;

@Service
@Transactional
public class CarServiceImpl implements CarService {
	@Autowired
	private CarRepository carRepository;

	@Override
	public Optional<Cars> findByMake(String make) {
		return carRepository.findMake(make);
	}

	@Override
	public List<Cars> findByModel(String model) {
		return carRepository.findByModel(model);
	}

	@Override
	public Optional<Cars> findByCarId(long id) {
		return carRepository.findById(id);
	}

	@Override
	public void deletecars(long id) {
		carRepository.deleteById(id);
	}

	@Override
	public void savecars(Cars cars) {
		carRepository.save(cars);
	}

	@Override
	public void updatecars(Cars cars) {
		Cars car = findByCarId(cars.getId()).get();
		if (car != null) {
			car.setColor(cars.getColor());
			car.setMake(cars.getMake());
			car.setModel(cars.getModel());
			car.setYear(cars.getYear());
			car.setLicensePlate(cars.getLicensePlate());
		}
	}

	@Override
	public List<Cars> findAll() {
		return carRepository.findAll();
	}

	@Override
	public List<Cars> findAllByCarUser(Users carUser) {

		return carRepository.findAllByCarUser(carUser);
	}

}
