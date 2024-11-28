package book.ecom.repository;

import java.time.LocalDateTime;
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
            "WHERE YEAR(po.orderDate) = :year AND po.status = 'Delivered' " +
            "GROUP BY MONTH(po.orderDate) " +
            "ORDER BY month")
    List<Object[]> getPriceByMonth(@Param("year") int year);

    @Query("SELECT DAY(po.orderDate) AS day, COALESCE(SUM(po.price), 0) AS totalPrice " +
            "FROM ProductOrder po " +
            "WHERE YEAR(po.orderDate) = :year AND MONTH(po.orderDate) = :month AND po.status = 'Delivered' " +
            "GROUP BY DAY(po.orderDate) " +
            "ORDER BY day")
    List<Object[]> getPriceByDay(@Param("year") int year, @Param("month") int month);

    @Query("SELECT po.user.name AS name, COALESCE(SUM(po.price), 0) AS totalPrice " +
            "FROM ProductOrder po " +
            "WHERE po.orderDate BETWEEN :startDate AND :endDate AND po.status = 'Delivered' " +
            "GROUP BY po.user.name " +
            "ORDER BY totalPrice DESC")
    List<Object[]> findTopCustomersByDateRange(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);

    @Query("SELECT po.product.title AS title, COALESCE(SUM(po.quantity), 0) AS totalQuantity, COALESCE(SUM(po.price), 0) AS totalPrice " +
            "FROM ProductOrder po " +
            "WHERE po.orderDate BETWEEN :startDate AND :endDate AND po.status = 'Delivered' " +
            "GROUP BY po.product.title " +
            "ORDER BY totalQuantity DESC")
    List<Object[]> findTopProductsByDateRange(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);
}