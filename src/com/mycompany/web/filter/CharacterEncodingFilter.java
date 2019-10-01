package com.mycompany.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter{
	private String encoding;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
			System.out.println("CharacterEncodingFilter init run...");
			encoding = filterConfig.getInitParameter("encoding"); //parameter 이름
	}
	

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("CharacterEncodingFilter doFilter run...");
		//전처리
		request.setCharacterEncoding(encoding);
		//서블릿 이동
		chain.doFilter(request, response);
		
	}
	
}
