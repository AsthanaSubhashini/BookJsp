package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BooksBean;

/**
 * Servlet implementation class ConfirmBookDel
 */
@WebServlet("/ConfirmBookDel")
public class ConfirmBookDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmBookDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd;
		BooksBean bb = new BooksBean();
		bb.setIsbn(Integer.valueOf(request.getParameter("isbn")));
		System.out.println(request.getParameter("isbn"));
		if(bb.delBook().equals("success"))
		{
			request.setAttribute("message", "Book Successfully got deleted");
			rd = request.getRequestDispatcher("/WEB-INF/views/showmessage.jsp");
			rd.forward(request, response);
		}
		else
		{
			rd = request.getRequestDispatcher("/WEB-INF/views/error.jsp");
			rd.forward(request, response);
		}
	}
}
