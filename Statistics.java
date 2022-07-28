import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.xml.crypto.dsig.keyinfo.RetrievalMethod;

import kr.co.green.BusanUtil;

public class Statistics { // 통계 해야될게... 무슨 엔딩을 몇명이 봤는지랑 퍼센트로는 몇퍼인지
	public double EndingStatistics(int ending_id) { // 본 엔딩의 인원수와 통계 계산
		int ending_headcount = 0;
		double total_headcount = 0;
		double headcount_and_persent = 0;

		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.statistics_ending");
				PreparedStatement pstmt2 = conn.prepareStatement("UPDATE Busan.statistics_ending SET ending_headcount = ? WHERE ending_id = ?");
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				if (ending_id == rs.getInt("ending_id")) {
					ending_headcount = rs.getInt("ending_headcount") + 1;
					pstmt2.setInt(1, ending_headcount);
				}
				total_headcount += rs.getInt("ending_headcount");
			}
	
			pstmt2.setInt(2, ending_id);
//			pstmt2.executeUpdate();

			headcount_and_persent = Math.floor((ending_headcount + ending_headcount / total_headcount) * 10000);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return headcount_and_persent;
	}

	public static void main(String[] args) {
		Statistics st = new Statistics();

		double result = st.EndingStatistics(2);
		System.out.println(result + "\n이 엔딩을 본 사람은 " + (int)(result / 10000) 
				+ "명이고 전체의 " + result % 10000 / 100 + "% 입니다.");
	}
}