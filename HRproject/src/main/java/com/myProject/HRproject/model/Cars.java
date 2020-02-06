package com.myProject.HRproject.model;

import javax.persistence.CascadeType;
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
@Table(name = "cars")
public class Cars {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "year")
	private String year;
	@Column(name = "make")
	private String make;
	@Column(name = "model")
	private String model;
	@Column(name = "color")
	private String color;
	@Column(name = "licensePlate")
	private String licensePlate;
	

	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="user_id", referencedColumnName = "id")
	private Users carUser;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getLicensePlate() {
		return licensePlate;
	}
	public void setLicensePlate(String licensePlate) {
		this.licensePlate = licensePlate;
	}
	public Users getCarUser() {
		return carUser;
	}
	public void setCarUser(Users carUser) {
		this.carUser = carUser;
	}
	

}
