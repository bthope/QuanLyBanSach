package book.ecom.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.domain.Page;

import book.ecom.model.OrderRequest;
import book.ecom.model.ProductOrder;

public interface OrderService {

    public void saveOrder(Integer userid, OrderRequest orderRequest) throws Exception;

    public List<ProductOrder> getOrdersByUser(Integer userId);

    public ProductOrder updateOrderStatus(Integer id, String status);

    //BaoThong
    public ProductOrder updateOrderStatusAdmin(Integer id, String status);

    public List<ProductOrder> getAllOrders();

    public ProductOrder getOrdersByOrderId(String orderId);

    public Page<ProductOrder> getAllOrdersPagination(Integer pageNo, Integer pageSize);

    public List<Object[]> getMonthlySalesByYear(int year);

    //Thống kê theo ngày
    public List<Object[]> getDailySalesByMonth(int year, int month);

    //TK KH
    List<Object[]> getTopCustomersByDateRange(LocalDateTime startDate, LocalDateTime endDate);

    //TK SP
    List<Object[]> getTopProductsByDateRange(LocalDateTime startDate, LocalDateTime endDate);
}
