package com.ecom.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(length = 500)
	private String title;

	@Column(length = 5000)
	private String description;

	private String category;

	private Double price;

	private int stock;

	@Column(length = 1000)
	private String image;

	private int discount;
	
	private Double discountPrice;
	
	private Boolean isActive;

	public boolean isImageUrl() {
		return image != null && (image.startsWith("http://") || image.startsWith("https://"));
	}

	// Add this method to get the proper image source
	public String getImageSource() {
		return isImageUrl() ? image : "/img/product_img/" + image;
	}
	
}