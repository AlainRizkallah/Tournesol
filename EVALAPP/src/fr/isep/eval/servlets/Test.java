package fr.isep.eval.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.isep.eval.beans.PremierBean;

public class Test extends HttpServlet {
	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		
		String paramAuteur = request.getParameter( "auteur" );
		String message = "Transmission de variables : OK ! " + paramAuteur;
		
		PremierBean Alain = new PremierBean();
		Alain.setNom("Rizkallah");
		Alain.setPrenom("Alain");
		
		request.setAttribute( "test", message );
		request.setAttribute("alain", Alain);
		
		this.getServletContext().getRequestDispatcher( "/WEB-INF/test.jsp" ).forward( request, response );	
	}

}
