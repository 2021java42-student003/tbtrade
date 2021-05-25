package tbtrade.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import la.dao.DAOException;
import la.dao.MemberDAO;
import tbtrade.bean.BookBean;

@WebServlet("/SearchMemberServlet")
public class SearchMemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// パラメータの解析
		String action = request.getParameter("action");

		try {
			// モデルのDAOを生成
			MemberDAO dao = new MemberDAO();
			// パラメータなしの場合は全レコード表示
			if (action == null || action.length() == 0) {
				List<BookBean> list = dao.findAll();
				// リストをリクエストスコープに入れてJSPへフォワードする
				// itemsはJSPに合わせて変える
				request.setAttribute("Member", list);
				gotoPage(request, response, "resultMember.jsp");
			}
		} catch (DAOException e) {
			e.printStackTrace();
			request.setAttribute("message", "内部エラーが発生しました");
			RequestDispatcher rd = request.getRequestDispatcher("/showItem.jsp");
			rd.forward(request, response);
		}
	}

	private void gotoPage(HttpServletRequest request, HttpServletResponse response, String page)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
