package kr.co.green;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// 개인 업적과 통계 테이블?
// 둘 다 꺼내 쓸 수 있도록...
// 업적은 배열로 꺼낼 수 있게
public class AchievementsTest { // 업적 달성 // login_info에 숫자로 입력하고 꺼낼 때 업적 String 변환 메소드
	public String ChoiceCount(int count) { // 업적 id만 치면 무슨 업적인지 나오는 메소드
		String achv = null;
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if() {
					achv = "개발자는 코딩코딩";
					// 튜토리얼도 못 깬
					// 좀비와의 첫 만남을 한
					// 좀비와 몇번 전투해서 많이 죽으면? -> 좀비의 동료가 된
					// 모든 동료를 모은
					// 모든 적을 마주친?? 
					// 유니버스에 통달한
					// 어딘가의 효자
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return achv;
	}
}