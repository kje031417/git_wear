package order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import item.controller.ItemService;
import order.bean.OrderDTO;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value = "/item/order_info.do")
	public  ModelAndView GuestBookWrite(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		OrderDTO dto = new OrderDTO();
		dto.setOrd_date(request.getParameter("ord_date"));
		dto.setOrd_time(request.getParameter("ord_time"));
		dto.setOrd_number(request.getParameter("ord_number"));
		dto.setUser_id(request.getParameter("user_id"));
		dto.setOrd_name(request.getParameter("item_name"));
		dto.setOrd_color(request.getParameter("item_color"));
		dto.setOrd_size(request.getParameter("item_size"));
		dto.setOrd_price(Integer.parseInt(request.getParameter("item_price")));
		dto.setOrd_qty(Integer.parseInt(request.getParameter("ord_qty")));
		dto.setOrd_totalprice(Integer.parseInt(request.getParameter("ord_totalprice")));
		dto.setUser_post(request.getParameter("user_post"));
		dto.setUser_addr1(request.getParameter("user_addr1"));
		dto.setUser_addr2(request.getParameter("user_addr2"));
		
		int result = orderService.order_info(dto);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("req", "GuestBookWrite.jsp");
		modelAndView.setViewName("Index.jsp");
		
		return modelAndView;
	}
	
	// 주문 확인
	@RequestMapping(value = "/item/order_check.do")
	public ModelAndView order_check(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));

		OrderDTO dto = orderService.order_check(seq);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("req", "order_check.jsp");

		modelAndView.setViewName("order_check.jsp");
		return modelAndView;
	}
	
	// 주문 내역
	@RequestMapping(value="/orderlist/orderlist.do")
	public ModelAndView orderlist(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		int pg = 1;
		if(request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));
		
		//HttpSession session = request.getSession();
		//String user_id = (String)session.getAttribute("memId");		//memId의 세션 값 불러오기
		String user_id = "1234";	// test
		
		int totalA = orderService.getTotalA(user_id);				//특정 회원의 장바구니 상품 수
		int totalP = (totalA + 2) / 3;
		if(pg > totalP) pg = totalP;
		
		// 목록 보기
		int endNum = pg * 3;
		int startNum = endNum - 2;
		
		// 특정 회원의 주문 내역 리스트 가져오기
		List<OrderDTO> list = orderService.getOrderList(startNum, endNum, user_id);
		
		// 3블럭
		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		// 상품의 이미지 가져오기 <== 주문 테이블에 변수 추가?
		String item_img = "";
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("req", "../orderlist/orderlist.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	// 주문 상세 내역
	@RequestMapping(value="/orderlist/orderdetail.do")
	public ModelAndView orderDetail(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		String ord_number = request.getParameter("ord_number");
		
		OrderDTO dto = orderService.getOrderDetail(ord_number);
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("req", "../orderlist/orderdetails.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
}
