import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.BusanUtil;

public class Statistics { // 통계 해야될게... 무슨 엔딩을 몇명이 봤는지랑 퍼센트로는 몇퍼인지
	public int update(int ending_id) throws SQLException {
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("UPDATE Busan.statistics_ending SET ending_headcount = ? WHERE ending_id = ?");
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				if (ending_id == rs.getInt("ending_id")) {
					pstmt.setString(rs.getInt("ending_headcount") + 1, String.valueOf(ending_id));
				}
			}
			return pstmt.executeUpdate();
		}
	}
	
	public double Statistics_ending(int ending_id) {
		int ending_headcount = 0;
		double total_headcount = 0;
		double headcount_and_persent = 0;

		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.statistics_ending");
				PreparedStatement pstmt2 = conn.prepareStatement("UPDATE Busan.statistics_ending SET ending_headcount = ? WHERE ending_id = ?");
				ResultSet rs = pstmt.executeQuery();
				ResultSet rs2 = pstmt2.executeQuery();) {

			while (rs.next()) {
				if (ending_id == rs.getInt("ending_id")) {
					ending_headcount = rs.getInt("ending_headcount");
				}
				total_headcount += rs.getInt("ending_headcount");
			}

			headcount_and_persent = Math.floor((ending_headcount + ending_headcount / total_headcount) * 10000);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return headcount_and_persent / 100;
	}

	public static void main(String[] args) {
		Statistics st = new Statistics();
		System.out.println(st.Statistics_ending(1));
	}
}