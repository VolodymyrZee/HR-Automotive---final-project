package com.myProject.HRproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="car_service")
public class CarService {
	
	
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id") 
	private Integer id;
	
	@Column(name="carYear")
	private String carYear;
	@Column(name="carMake")
	private String carMake;
	@Column(name="carModel")
	private String carModel;
	@Column(name="carColor")
	private String carColor;
	@Column(name="carLicensePlate")
	private String carLicensePlate;
	
	

	
	


	public CarService(String carYear, String carMake, String carModel, String carColor, String carLicensePlate) {
		super();
		this.carYear = carYear;
		this.carMake = carMake;
		this.carModel = carModel;
		this.carColor = carColor;
		this.carLicensePlate = carLicensePlate;
	}


	public String getCarYear() {
		return carYear;
	}


	public void setCarYear(String carYear) {
		this.carYear = carYear;
	}


	public String getCarMake() {
		return carMake;
	}


	public void setCarMake(String carMake) {
		this.carMake = carMake;
	}


	public String getCarModel() {
		return carModel;
	}


	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}


	public String getCarColor() {
		return carColor;
	}


	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}


	public String getCarLicensePlate() {
		return carLicensePlate;
	}


	public void setCarLicensePlate(String carLicensePlate) {
		this.carLicensePlate = carLicensePlate;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	
	
}
