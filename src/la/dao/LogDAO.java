package la.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import la.bean.LogBean;

public class LogDAO {
	private Connection con;

	public LogDAO() throws DAOException{
		getConnection();
	}

	public List<LogBean> findAll() throws DAOException{
		if(con == null)
			getConnection();

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			// 表に入力したデータを入れたい(売買用テーブルlog2に入れる)

		String sql = "SELECT * FROM log2 ORDER BY datetime DESC";

		// PrepraredStatementオブジェクトの取得
			st = con.prepareStatement(sql);

		// SQLの実行
			rs = st.executeQuery();
		// 結果の取得
		List<LogBean> list = new ArrayList<LogBean>();
		while (rs.next()) {
			String datetime = rs.getString("datetime");
			String book_name = rs.getString("book_name");
			int price = rs.getInt("price");
			int quantity = rs.getInt("quantity");
			LogBean bean = new LogBean(datetime, book_name, price, quantity);
			list.add(bean);
		}
		// 取引履歴一覧をListとして返す
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new DAOException("レコードの操作に失敗しました");
		} finally {
			try {
			// リソースの開放
				if(rs != null) rs.close();
				if(st != null) st.close();
			close();
			} catch (Exception e) {
				throw new DAOException("リソースの開放に失敗しました");
			}
		}
	}

		private void getConnection() throws DAOException{
			try {
				// JDBCドライバの登録
				Class.forName("org.postgresql.Driver");
				// URL、ユーザー名、パスワードの設定
				String url = "jdbc:postgresql:sample";
				String user = "student";
				String pass = "himitu";
				// データベースの接続
				con = DriverManager.getConnection(url, user, pass);
			} catch (Exception e ) {
				throw new DAOException ("接続に失敗しました");
			}
		}

		private void close() throws SQLException{
			if (con != null) {
				con.close();
				con = null;
			}
		}

	}
