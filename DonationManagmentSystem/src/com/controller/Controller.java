package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Account;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getParameter("action");
		
		if(action == null){
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		else{
			doPost(request, response);
		}
	
	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equals("signup")){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		if(action.equals("login")){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
		if(action.equals("login-form")){
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			Account account = new Account();
			boolean status = false;
			try {
				status = account.doLogin(email, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(status == true){
				HttpSession session = request.getSession();
				
				session.setAttribute("email", email);
				session.setAttribute("password", password);
				request.getRequestDispatcher("afterlogin.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
		}
		
		if( action.equals("donate")){
			HttpSession session = request.getSession(false);
			
			String email = (String) session.getAttribute("email");
			String password = (String) session.getAttribute("password");
			Account account = new Account();
			String result[] = null;
			try {
				result = account.donateInfo(email, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if( result == null){
				session.invalidate();
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else{
				session.setAttribute("fname", result[0]);
				session.setAttribute("lname", result[1]);
				session.setAttribute("country", result[2]);
				session.setAttribute("contact", result[3]);
				request.getRequestDispatcher("donate.jsp").forward(request, response);
			}
			
		}
		
		
		if( action.equals("transaction")){
			request.getRequestDispatcher("transaction.jsp").forward(request, response);
			
		}
	
		
		if( action.equals("profile")){
			
			HttpSession session = request.getSession(false);
			String email = (String) session.getAttribute("email");
			String password = (String) session.getAttribute("password");
			Account account = new Account();
			
			String result[] = null;
			
			try {
				result = account.donateInfo(email, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if( result == null){
				session.invalidate();
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		
			else{
				session.setAttribute("fname", result[0]);
				session.setAttribute("lname", result[1]);
				session.setAttribute("country", result[2]);
				session.setAttribute("contact", result[3]);
				session.setAttribute("dob", result[4]);
				session.setAttribute("identification", result[5]);
				session.setAttribute("gender", result[6]);
				session.setAttribute("address", result[7]);
				request.getRequestDispatcher("profile.jsp").forward(request, response);
			}
			
		}
	
		if( action.equals("edit-profile")){
			request.getRequestDispatcher("editprofile.jsp").forward(request, response);
		}
		
		if( action.equals("logout")){
			HttpSession session = request.getSession(false);
			session.invalidate();
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

}

















