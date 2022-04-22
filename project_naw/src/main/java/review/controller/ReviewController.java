package review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import review.bean.ReviewDTO;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/item/reviewList.do")
	public ModelAndView reviewList(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		// 상품 번호
		//String item_code = request.getParameter("item_code");
		String item_code = "002";	// test
		
		// 특정 상품의 리뷰글 가져오기
		List<ReviewDTO> list = reviewService.getReviewList(item_code);
				
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("../item/review.jsp");	// test
		//modelAndView.addObject("req_itemView", "../item/reviewWrite.jsp");
		//modelAndView.setViewName("../item/itemView.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/item/reviewWrite.do")
	public ModelAndView reviewInsert(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		//HttpSession session = request.getSession();
		//String user_id = (String)session.getAttribute("memId");		//memId의 세션 값 불러오기
		String user_id = "kim999";	// test
		
		//String item_code = request.getParameter("item_code");
		String item_code = "002";	// test
		String review_content = request.getParameter("review_content");
		int review_star = Integer.parseInt(request.getParameter("review_star"));
		
		// DB
		ReviewDTO dto = new ReviewDTO();
		dto.setItem_code(item_code);
		dto.setUser_id(user_id);
		dto.setReview_content(review_content);
		dto.setReview_star(review_star);
		
		int result = reviewService.insertReview(dto);
				
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		
		modelAndView.setViewName("../item/reviewWrite.jsp");
		//modelAndView.addObject("req_itemView", "../item/reviewWrite.jsp");
		//modelAndView.setViewName("../item/itemView.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/item/reviewModifyForm.do")
	public ModelAndView reviewModifyForm(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		int review_code = Integer.parseInt(request.getParameter("review_code"));
		
		// 상세 데이터 1줄 가져오기
		ReviewDTO dto = reviewService.getReviewDetail(review_code);
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.setViewName("../item/reviewModifyForm.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/item/reviewModify.do")
	public ModelAndView reviewModify(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		int review_code = Integer.parseInt(request.getParameter("review_code"));
		String review_content = request.getParameter("review_content");
		int review_start = Integer.parseInt(request.getParameter("review_star"));
		
		int result = reviewService.modifyReview(review_content, review_start, review_code);
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("../item/reviewModify.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/item/reviewDelete.do")
	public ModelAndView reviewDelete(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		int review_code = Integer.parseInt(request.getParameter("review_code"));
		
		int result = reviewService.deleteReview(review_code);
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("../item/reviewDelete.jsp");
		
		return modelAndView;
	}
}