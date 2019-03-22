package com.muhammed;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;


@WebServlet("/SaveData")
public class SaveData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SaveData() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String requestChoice,policyNumber,name, surname, requestMessage;
		requestChoice= request.getParameter("reqChooice").toString();
		policyNumber= request.getParameter("policyNum").toString();
		name= request.getParameter("nameV").toString();
		surname= request.getParameter("surnameV").toString();
		requestMessage= request.getParameter("requestMes").toString();
		Connection conn=null;
		try {
		
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/lundegaard","dbmuhammed","dbpassword");
			String sql="INSERT INTO `formdata`(`requesttype`, `policynumber`, `name`, `surname`, `requestmessage`) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, requestChoice);
			ps.setString(2, policyNumber);
			ps.setString(3, name);
			ps.setString(4, surname);
			ps.setString(5, requestMessage);
			ps.executeUpdate();
			response.sendRedirect("addData.jsp");
			System.out.println("registerd succussfully");
		} catch (SQLException | ClassNotFoundException  e) {
			e.printStackTrace();
		}finally {
		
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
		
	}

}
