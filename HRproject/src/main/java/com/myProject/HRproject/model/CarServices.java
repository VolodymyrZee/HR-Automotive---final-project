package com.myProject.HRproject.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CarServices {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	private String serviceDescription;
	private String serviceRequestDate;
	private String serviceFulfillmentDate;
	private boolean serviceCompleted;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="car_id", referencedColumnName = "id")
	private Cars serviceCar;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getServiceDescription() {
		return serviceDescription;
	}

	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}

	public boolean isServiceCompleted() {
		return serviceCompleted;
	}

	public void setServiceCompleted(boolean serviceCompleted) {
		this.serviceCompleted = serviceCompleted;
	}

	public Cars getServiceCar() {
		return serviceCar;
	}

	public void setServiceCar(Cars serviceCar) {
		this.serviceCar = serviceCar;
	}

	public String getServiceRequestDate() {
		return serviceRequestDate;
	}

	public void setServiceRequestDate(String serviceRequestDate) {
		this.serviceRequestDate = serviceRequestDate;
	}

	public String getServiceFulfillmentDate() {
		return serviceFulfillmentDate;
	}

	public void setServiceFulfillmentDate(String serviceFulfillmentDate) {
		this.serviceFulfillmentDate = serviceFulfillmentDate;
	}
	
	
	
}
