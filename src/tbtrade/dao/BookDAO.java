package tbtrade.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import tbtrade.bean.BookBean;

public class BookDAO {
	private Connection con;

	public BookDAO() throws DAOException {
		getConnection();
		}

	public List<BookBean> findAll() throws DAOException {
		if (con == null)
			getConnection();

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM books";

			st = con.prepareStatement(sql);

			rs = st.executeQuery();

			List<BookBean> list = new ArrayList<BookBean>();
			while ( rs.next()) {
				int book_id = rs.getInt("book_id");
				String book_name = rs.getString("book_name");
				int price = rs.getInt("price");
				String author = rs.getString("author");
				String publisher = rs.getString("publisher");
				Date publication_date = rs.getDate("publication_date");
				int stock = rs.getInt("stock");
				int is_secondhand = rs.getInt("is_secondhand");
				int under_assessing = rs.getInt("under_assessing");

				BookBean bean = new BookBean(book_id, book_name, price, author, publisher, publication_date, stock, is_secondhand, under_assessing);
				list.add(bean);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new DAOException("レコードの取得に失敗しました");
		} finally {
			try {
				if(rs != null) rs.close();
				if(st != null) st.close();
				close();
			} catch (Exception e) {
				throw new DAOException("リソースの開放に失敗しました。");
			}
		}
	}

	private void getConnection() throws DAOException {
		try {
			Class.forName("org.postgresql.Driver");

			String url = "jdbc:postgresql:tbtrade";
			String user = "postgres";
			String pass = "himitu";

			con = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			throw new DAOException("接続に失敗しました。");
		}
	}

	private void close() throws SQLException {
		if (con != null) {
			con.close();
			con = null;
		}
	}
}
