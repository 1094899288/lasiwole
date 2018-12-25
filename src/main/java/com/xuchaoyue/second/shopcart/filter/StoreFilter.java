package com.xuchaoyue.second.shopcart.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.xuchaoyue.second.user.util.FormatEmpty;

/**
 * Servlet Filter implementation class StoreFilter
 */
public class StoreFilter implements Filter {

    /**
     * Default constructor. 
     */
    public StoreFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest  request1= (HttpServletRequest) request;
		
		if(FormatEmpty.isEmpty((request1.getSession().getAttribute("username")))) {
    	 	request.getRequestDispatcher("/jsp/store/storelogin.jsp").forward(request, response);
     }else {
 
     	chain.doFilter(request, response);
     }
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
