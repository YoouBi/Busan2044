import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.xml.crypto.dsig.keyinfo.RetrievalMethod;

import kr.co.green.BusanUtil;

public class EndingStatisticsTest { // 통계 해야될게... 무슨 엔딩을 몇명이 봤는지랑 퍼센트로는 몇퍼인지
	public int EndingHeadcount(int ending_id) {
		int count = 0;
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.statistics_ending");
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				if (ending_id == rs.getInt("ending_id")) {
					count = rs.getInt("ending_headcount");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int EndingUpdate(int ending_id, int count) throws SQLException { // 본 엔딩 자기 자신을 인원수에 +1 업데이트
		String query = "UPDATE Busan.statistics_ending SET ending_headcount = ? WHERE ending_id = ?";
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(query);) {
			
			pstmt.setInt(1, count + 1);
			pstmt.setInt(2, ending_id);
			
			return pstmt.executeUpdate();
		}
	}
	
	public double EndingStatistics(int ending_id) { // 본 엔딩의 인원수와 통계 계산
		int ending_headcount = 0;
		double total_headcount = 0;
		double headcount_and_persent = 0;

		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.statistics_ending");
				ResultSet rs = pstmt.executeQuery();) {
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
	
	public void EndingStatisticsAll(int ending_id) {
		try {
			EndingUpdate(ending_id, EndingHeadcount(ending_id));
//			EndingStatistics(ending_id);
			System.out.println(EndingStatistics(ending_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		Statistics st = new Statistics();

//		st.EndingStatisticsAll(1);
		System.out.println(st.EndingStatistics(1));
	}
}