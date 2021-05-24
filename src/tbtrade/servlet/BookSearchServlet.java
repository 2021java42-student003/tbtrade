package tbtrade.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tbtrade.bean.BookBean;
import tbtrade.dao.BookDAO;
import tbtrade.dao.DAOException;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/BookSearchServlet")
public class BookSearchServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			BookDAO dao = new BookDAO();
			List<BookBean> list = dao.findAll();

			request.setAttribute("books", list);
			RequestDispatcher rd = request.getRequestDispatcher("/bookResult.jsp");
			rd.forward(request, response);
		} catch (DAOException e) {
			e.printStackTrace();
			request.setAttribute("message", "内部エラーが発生しました。");
			RequestDispatcher rd = request.getRequestDispatcher("/tbtrade/login.jsp");
			rd.forward(request,  response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
