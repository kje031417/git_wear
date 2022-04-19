package review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/item/review.do")
	public ModelAndView reviewList(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		
		
		modelAndView.setViewName("../item/reivew.jsp");
		//modelAndView.addObject("req_itemView", "../item/reviewWrite.jsp");
		//modelAndView.setViewName("../item/itemView.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/item/reivewWrite.do")
	public ModelAndView reviewInsert(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		//
		String inquiry_subject = request.getParameter("inquiry_subject");
		String inquiry_content = request.getParameter("inquiry_content");
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		
		
		
		modelAndView.setViewName("../item/reivewWrite.jsp");
		//modelAndView.addObject("req_itemView", "../item/reviewWrite.jsp");
		//modelAndView.setViewName("../item/itemView.jsp");
		return modelAndView;
	}
	
	public ModelAndView reviewModify(HttpServletRequest request, HttpServletResponse response) {
		
		return null;
	}
	
	public ModelAndView reviewDelete(HttpServletRequest request, HttpServletResponse response) {
		
		return null;
	}
}
