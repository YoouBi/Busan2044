import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.green.BusanUtil;

// 전체 통계(중요 선택지만)테이블과 개인별 통계 저장 테이블
// 변수로 전투로 죽는 걸 생각해서 int 값은 아예 통과 못했을 때 -1, 통과는 했으나 그 선택을 안했을 때 0, 선택했을 때 1~선택번호?
// 개인 통계는 테이블에서 id검색 메소드를 써서 true가 반환되면 update 메소드를, false가 반환되면 insert 메소드를 쓰자
public class ChoiceStatisticsTest {
	public String ChoiceStatistics(String count) { // 선택지 통계내서 이 선택을 한 사람은 몇명 있는지, 할 수 있다면 간단한 키워드까지 알려주기
		String achv = null;
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.statistics_choice");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return achv;
	}
	
	public boolean SearchStatistics(String id) { // id 있는지 검색해서 boolean 값으로 반환
		boolean search = false;
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.statistics_choice");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if(id.equals(rs.getString(id))) {
					search = true;
					break;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return search;
	}
	
	public int CreateChoice(String id) { // 유저id가 없을 때 테이블에 유저 선택지 row 만들기
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("INSERT INTO  FROM Busan.statistics_choice");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if(id.equals(rs.getString(id))) {
					
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return search;
	}
	
	// 챕터 번호와 선택지 번호, 선택지 택한 번호 넘겨받으면 알아서 넣을 수 있게? 714
	public void UpdateChoice(String id, int choice) { // 유저 id가 있다면 선택지 수정
		char[] choiceChar = String.valueOf(choice).toCharArray();
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("UPDATE Busan.statistics_choice SET ? = ? WHERE id = ?");) {
			
			pstmt.setString(1, "choice" + "");
			pstmt.setString(2, "");
			pstmt.setString(3, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		
	}
}