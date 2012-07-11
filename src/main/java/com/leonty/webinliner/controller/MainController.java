package com.leonty.webinliner.controller;

import java.text.DateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.leonty.CSSInliner;
import com.leonty.webinliner.form.EntryForm;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView entry() {
		logger.info("Entry controller");
		
		return new ModelAndView("entry", "command", new EntryForm());
	}
	
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String result(
			@ModelAttribute("entryForm") EntryForm entryForm, 
			BindingResult result,
			Model model) {
		logger.info("Resulting html");

		logger.info("html: " + entryForm.getHtml());
		logger.info("css: " + entryForm.getCss());
		
		String html = "";
		try {
			html = CSSInliner.inlineCss("<body><div>Test</div></body>", "div { background: green; }", true);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("html", html);
		
		return "result";
	}	
	
}
