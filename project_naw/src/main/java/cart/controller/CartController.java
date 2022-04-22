package cart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartDTO;
import order.bean.OrderDTO;
import order.controller.OrderService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/item/cartList.do")
	public ModelAndView cartList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/* 데이터 처리 */
		int pg = 1;
		if(request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));
		
		// 페이징 처리
		//HttpSession session = request.getSession();
		//String user_id = (String)session.getAttribute("memId");		//memId의 세션 값 불러오기
		String user_id = "hong";	// test
		int totalA = cartService.getTotalA(user_id);				//특정 회원의 장바구니 상품 수
		int totalP = (totalA + 2) / 3;
		if(pg > totalP) pg = totalP;
		
		// 목록 보기
		int endNum = pg * 3;
		int startNum = endNum - 2;
		
		List<CartDTO> list = cartService.getCartList(startNum, endNum, user_id);	// 특정 회원의 장바구니 목록
		
		// 3블럭
		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		// 총 주문 금액
		int totalPrice = cartService.getTotalprice(user_id);
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("totalA", totalA);
		modelAndView.addObject("list", list);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("totalPrice", totalPrice);
		modelAndView.addObject("req", "../item/cartList.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	
	@RequestMapping(value="/item/cartModify.do")
	public ModelAndView cartListModify(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/* 데이터 처리 */
		// 수량 수정
		int cart_qty = Integer.parseInt(request.getParameter("cart_qty"));
		int cart_seq = Integer.parseInt(request.getParameter("cart_seq"));
		
		// 특정 상품의 데이터 1줄 가져오기
		CartDTO dto = cartService.getCartDetail(cart_seq);
		int cart_price = dto.getItem_price();
		int cart_totalprice = cart_qty * cart_price;
		
		// 수량 수정
		int result = cartService.modifyCart(cart_qty, cart_totalprice, cart_seq);
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("req", "../item/cartModify.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value="/item/cartListDelete.do")
	public ModelAndView cartListDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/* 데이터 처리 */
		int cart_seq = Integer.parseInt(request.getParameter("cart_seq"));
		int result = cartService.deleteCart(cart_seq);
			
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("req", "../item/cartListDelete.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/item/cartOrder.do")
	public ModelAndView cartOrder(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		//HttpSession session = request.getSession();
		//String user_id = (String)session.getAttribute("memId");		//memId의 세션 값 불러오기
		String user_id = "hong";	// test
		
		// 특정 회원의 장바구니 리스트 가져오기
		List<CartDTO> list = cartService.getCartListOrder(user_id);
		
		// 반복문으로 orderDTO에 저장 후 가져오기
		OrderDTO dto;
		List<OrderDTO> list_result = new ArrayList<OrderDTO>();
		
		for(int i=0; i<list.size(); i++) {
			dto = new OrderDTO();
			dto.setUser_id(user_id);
			dto.setCart_seq(list.get(i).getCart_seq());
			dto.setOrd_code(list.get(i).getItem_code());
			dto.setOrd_name(list.get(i).getItem_name());
			dto.setOrd_color(list.get(i).getItem_color());
			dto.setOrd_size(list.get(i).getItem_size());
			dto.setOrd_price(list.get(i).getItem_price());
			dto.setOrd_qty(list.get(i).getCart_qty());
			dto.setOrd_totalprice(list.get(i).getCart_totalprice());
			
			list_result.add(dto);
		}
		
		
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list_result);
		modelAndView.addObject("req", "../item/order_info.jsp");
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
}
