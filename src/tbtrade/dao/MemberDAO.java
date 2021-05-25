package tbtrade.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import tbtrade.bean.MemberBean;

public class MemberDAO {
	private Connection con;

	public MemberDAO() throws DAOException{
		getConnection();
	}

	public List<MemberBean> findAll() throws DAOException{
		if(con == null)
			getConnection();

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			// 表に入力したデータを入れたい(売買用テーブルlogに入れる)

		String sql = "SELECT * FROM member ORDER BY member_id ";

		// PrepraredStatementオブジェクトの取得
			st = con.prepareStatement(sql);

		// SQLの実行
			rs = st.executeQuery();
		// 結果の取得
		List<MemberBean> list = new ArrayList<MemberBean>();
		while (rs.next()) {
			String member_name = rs.getString("member_id");
			String postal = rs.getString("postal");
			String address = rs.getString("address");
			String tel = rs.getString("tel");
			String mail= rs.getString("mail");
			String password = rs.getString("password");

			MemberBean bean = new MemberBean(member_name, postal, address, tel, mail, password);
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


