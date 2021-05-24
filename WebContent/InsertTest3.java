package tbtrade;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

class InsertTest3 {
	public static void main(String[] args) {

		try {
			// JDBCドライバの登録
			Class.forName("org.postgresql.Driver");
			// URL、ユーザー名、パスワードの設定
			String url = "jdbc:postgresql:tbtrade";
			String user = "postgres";
			String pass = "himitu";
			// データベースへの接続
			Connection con = DriverManager.getConnection(url, user, pass);
			// SQL文の作成（テストデータ３）
			String sql = "INSERT INTO log(datetime, is_sell, member_id, quantity) VALUES( '2019-10-04 15:25:07', 1, 1, 1)";

			// PreparedStatementオブジェクトの取得
			PreparedStatement st = con.prepareStatement(sql);

			// SQLの実行
			int rows = st.executeUpdate();
			System.out.println(rows + "件、データベースに追加しました");

			// リソースの開放
			st.close();
			con.close();

		} catch (ClassNotFoundException e){
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();

		}
	}
}

