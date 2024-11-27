package book.ecom.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import book.ecom.model.ProductOrder;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ProductOrderRepository extends JpaRepository<ProductOrder, Integer> {

    List<ProductOrder> findByUserIdOrderByOrderDateDesc(Integer userId);

    ProductOrder findByOrderId(String orderId);

    @Query("SELECT MONTH(po.orderDate) AS month, COALESCE(SUM(po.price), 0) AS totalPrice " +
            "FROM ProductOrder po " +
            "WHERE YEAR(po.orderDate) = :year " +
            "GROUP BY MONTH(po.orderDate) " +
            "ORDER BY month")
    List<Object[]> getPriceByMonth(@Param("year") int year);

}
