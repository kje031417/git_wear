package inquiry.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import inquiry.bean.InquiryDTO;

@Controller
public class InquiryController {
	@Autowired
	private InquiryService inquiryService;
	
	@RequestMapping(value="/item/inquiry.do")
	public ModelAndView inquiryList(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		int pg = 1;
		if(request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));
		
		// 페이징 처리
		int totalA = inquiryService.getTotalA();
		int totalP = (totalA + 4) / 5;
		if(pg > totalP) pg = totalP;
		
		// 목록 보기
		int endNum = pg * 5;
		int startNum = endNum - 4;
		
		List<InquiryDTO> list = inquiryService.getInquiryList(startNum, endNum);
		
		// 3블럭
		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		/* 화면 네비게이션 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("totalP", totalP);
		modelAndView.setViewName("../item/inquiry.jsp");
		//modelAndView.addObject("req_itemView", "../item/inquiry.jsp");
		//modelAndView.setViewName("../item/itemView.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/item/inquiryView.do")
	public ModelAndView inquiryView(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		
		
		
		
		/* 화면 네비게이션 */
		
		return null;
	}
	
	@RequestMapping(value="/item/inquiryInsert.do")
	public ModelAndView inquiryInsert(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		
		/* 화면 네비게이션 */
		
		return null;
	}
	
	@RequestMapping(value="/item/inquiryModify.do")
	public ModelAndView inquiryModify(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		
		/* 화면 네비게이션 */
		
		return null;
	}
	
	@RequestMapping(value="/item/inquiryDelete.do")
	public ModelAndView inquiryDelete(HttpServletRequest request, HttpServletResponse response) {
		/* 데이터 처리 */
		
		/* 화면 네비게이션 */
		
		return null;
	}
}
