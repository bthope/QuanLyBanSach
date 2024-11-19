package book.ecom.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import book.ecom.model.ProductOrder;

public interface ProductOrderRepository extends JpaRepository<ProductOrder, Integer> {

	List<ProductOrder> findByUserId(Integer userId);

	ProductOrder findByOrderId(String orderId);

}
