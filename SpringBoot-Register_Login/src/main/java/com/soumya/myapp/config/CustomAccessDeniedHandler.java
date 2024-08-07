package com.soumya.myapp.config;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.access.AccessDeniedHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CustomAccessDeniedHandler implements AccessDeniedHandler {

	private static final Logger LOG = LoggerFactory.getLogger(CustomAccessDeniedHandler.class);
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
			
		System.err.println("Access Denied called");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
        if (authentication != null) {

            LOG.info("User '" + authentication.getName() +
                "' attempted to access the URL: " +
                request.getRequestURI());
        }
        response.sendRedirect(request.getContextPath() + "/access-denied");
	}

}
