package order.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import order.bean.OrderDTO;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 주문 정보
	public int order_info(OrderDTO dto) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("ord_date", dto.getOrd_date());
		map.put("ord_time", dto.getOrd_time());
		map.put("ord_number", dto.getOrd_number());
		map.put("user_id", dto.getUser_id());
		map.put("item_name", dto.getItem_name());
		map.put("item_color", dto.getItem_color());
		map.put("item_size", dto.getItem_size());
		map.put("item_price", Integer.toString(dto.getItem_price()));
		map.put("ord_qty", Integer.toString(dto.getOrd_qty()));
		map.put("ord_totalprice", Integer.toString(dto.getItem_price()+3000));
		map.put("user_post", dto.getUser_post());
		map.put("user_addr1", dto.getUser_addr1());
		map.put("user_addr2", dto.getUser_addr2());
		return sqlSession.insert("mybatis.orderMapper.order_info", map);
	}
	
	// 주문 확인
	public OrderDTO order_check(int seq) {
		return sqlSession.selectOne("mybatis.orderMapper.order_check", seq);
	}
}
