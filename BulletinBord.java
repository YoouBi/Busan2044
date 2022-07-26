import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.BusanUtil;

public class BulletinBord {
	public String BulletInputId(int userNum) {
		String a = null;
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.login_info");
				ResultSet rs = pstmt.executeQuery();) {

			while (rs.next()) {
				if(userNum == rs.getInt("userNum")) {
					a = rs.getString("id");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return a;
	}

	public int BulletCreate(String userId, String achv, String text, int star) {
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(
						"INSERT INTO Busan.bulletinBord (userId, achv, text, star) values (?, ?, ?, ?)");) {

			pstmt.setString(1, userId);
			pstmt.setString(2, achv);
			pstmt.setString(3, text);
			pstmt.setInt(4, star);

			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public static void main(String[] args) {
		BulletinBord bb = new BulletinBord();

		int result = bb.BulletCreate(bb.BulletInputId(5), "개발자는 코딩코딩하고 웁니다", "게임계를 뒤집어놓으셨다~~!!!!!", 5);
		System.out.println(result);
	}
}