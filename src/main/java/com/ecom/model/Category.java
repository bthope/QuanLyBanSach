package com.ecom.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String name;

	@Column(length = 1000)  // Tăng độ dài để chứa URL
	private String imageName;

	private Boolean isActive;

	public boolean isImageUrl() {
		return imageName != null && (imageName.startsWith("http://") || imageName.startsWith("https://"));
	}

	// Method để lấy đúng source của image
	public String getImageSource() {
		return isImageUrl() ? imageName : "/img/category_img/" + imageName;
	}

}
