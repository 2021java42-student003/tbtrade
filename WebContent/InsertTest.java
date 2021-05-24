package tbtrade;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

class InsertTest {
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
			// SQL文の作成
			String sql = "INSERT INTO member(member_name, postal, address, tel, mail, password) VALUES ('リカレント太郎', '160-0022', '東京都新宿区新宿3-1-13京王新宿追分ビル4階','09-999-9999', 'recurrent@mail.com', 'recurrent')";

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

