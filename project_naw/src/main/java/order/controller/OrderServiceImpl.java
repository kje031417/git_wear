package order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import order.bean.OrderDTO;
import order.dao.OrderDAO;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderDAO dao;
	
	@Override
	public int order_info(OrderDTO dto) {
		return dao.order_info(dto);
	}

	@Override
	public OrderDTO order_check(int seq) {
		return dao.order_check(seq);
	}
	
	@Override
	public List<OrderDTO> getOrderList(int startNum, int endNum, String user_id) {
		return null;
	}

	@Override
	public int getTotalA(String user_id) {
		return dao.getTotalA(user_id);
	}

	@Override
	public OrderDTO getOrderDetail(String ord_number) {
		return dao.getOrderDetail(ord_number);
	}	
}
