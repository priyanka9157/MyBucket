package com.grownited.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class LoginCheckFilter implements Filter  {
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession();
		System.out.println("LoginCheckFilter called.....");

		String url = ((HttpServletRequest) request).getRequestURI();
		System.out.println(url);
		if (url.contains("/ProductDetail")  || url.contains("/seedetails")  ||url.contains("/seecategory")  || url.contains("/img")||url.contains("/assets")|| url.contains("/listProducts") || url.contains("/login") || url.contains("/welcome") || url.contains("/logout") || url.contains("/signup") || url.contains("/forgetpassword") || url.contains("/authentication") || url.contains("/saveuser") || url.contains("/updatepasswordjspopen") || url.contains("/updatemypassword") || url.contains("/sendotpforforgetpassword") ) {
			chain.doFilter(request, response);
		} else {
			if (session.getAttribute("user") == null) {
				request.setAttribute("error", "Please Login Before Access the services");
				RequestDispatcher rd = request.getRequestDispatcher("login");
				rd.forward(request, response);
			}else {
				System.out.println("PASS From Filter...");
				chain.doFilter(request, response);
			}
		}
	}

}
