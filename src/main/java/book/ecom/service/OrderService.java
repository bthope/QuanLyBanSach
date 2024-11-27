package book.ecom.service;

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
}
