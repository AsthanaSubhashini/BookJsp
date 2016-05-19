package controllers;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActiveUsers
 */
@WebServlet("/ActiveUsers")
public class ActiveUsers extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActiveUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		DataInputStream dis = new DataInputStream(new FileInputStream("D:/activesessions.log"));
		int i = dis.readInt();
		System.out.println(i);
		request.setAttribute("message", "No of Active users are: "+i);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/showmessage.jsp");
		rd.forward(request, response);
	}
}
