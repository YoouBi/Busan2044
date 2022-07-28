import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.green.BusanUtil;

// 전체 통계(중요 선택지만)테이블과 개인별 통계 저장 테이블
// 변수로 전투로 죽는 걸 생각해서 int 값은 아예 통과 못했을 때 -1, 통과는 했으나 그 선택을 안했을 때 0, 선택했을 때 1~선택번호?
// 개인 통계는 테이블에서 id검색 메소드를 써서 true가 반환되면 update 메소드를, false가 반환되면 insert 메소드를 쓰자
public class ChoiceStatisticsTest {
	public String ChoiceStatistics(String count) { // 선택지 통계내서 이 선택을 한 사람은 몇명 있는지, 할 수 있다면 간단한 키워드까지 알려주기
		String achv = null;
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.login_choice");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return achv;
	}
	
	public boolean SearchStatistics(String id) { // id 있는지 검색해서 boolean 값으로 반환 했음!
		boolean search = false;
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.login_choice");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if(id.equals(rs.getString("id"))) {
					search = true;
					break;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return search;
	}
	
	public void CreateChoice(String id) { // 유저id가 없을 때 테이블에 유저 선택지 row 만들기
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("INSERT INTO Busan.statistics_destiny "
						+ "(id, choice1, choice2, choice3, choice4, choice5, choice6, choice7) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)");) {
			
			pstmt.setString(1, id);
			for (int i = 2; i < 9; i++) { // choice1이 i = 2에 세팅됨!
				if(i == 8) {
					pstmt.setString(i, "10/20");
				} else {
					pstmt.setString(i, "10");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void Resetchoice(String id) { // 새 게임 시작할 때 혹은 엔딩 끝났을 때 유저 선택지 테이블 초기화
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("UPDATE Busan.login_choice "
						+ "SET choice1 = ?, choice2 = ?, choice3 = ?, choice4 = ?, choice5 = ?, choice6 = ?, choice7 = ? "
						+ "WHERE id = ?");) {
			
			for (int i = 1; i < 8; i++) {
				if(i == 7) {
					pstmt.setString(i, "10/20");
				} else {
					pstmt.setString(i, "10");
				}
			}
			
			pstmt.setString(8, id);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 챕터 번호와 선택지 번호, 선택지 택한 번호 넘겨받으면 알아서 넣을 수 있게? 714
	public void UpdateChoice(String id, int choice) { // 유저 id가 있다면 선택지 수정
		int[] choiceArr = new int[3];
		
		choiceArr[0] = choice / 100;
		choiceArr[1] = choice % 100 / 10;
		choiceArr[2] = choice % 10;
		
		String choiceStr = "choice" + choiceArr[0]; 
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.login_choice");
				PreparedStatement pstmt2 = conn.prepareStatement("UPDATE Busan.login_choice SET choice? = ? WHERE id = ?");
				ResultSet rs = pstmt.executeQuery();) {
			
			pstmt2.setInt(1, choiceArr[0]);
			pstmt2.setString(3, id);
			
			String chapterChoice = "";
			while (rs.next()) {
				if (id.equals(rs.getString("id"))) {
					chapterChoice = rs.getString("choice" + choiceArr[0]); // 해당 챕터의 선택 내용 들고오기
				}
			}
			
			List<String> choiceList = new ArrayList<>();
			String[] choiceValue = chapterChoice.split("/");
			for (String s : choiceValue) {
				choiceList.add(s);
			}
			
			String value = "" + choiceArr[1] + choiceArr[2]; // 넣은 int choice값 중 뒤의 두자리
			choiceList.set(choiceArr[1] - 1, value);
			
			chapterChoice = "";
			
			for (int i = 0; i < choiceList.size(); i++) {
				if (i > 0) {
					chapterChoice = chapterChoice.concat("/");
				}
					chapterChoice = chapterChoice.concat(choiceList.get(i));
			}
			
			String chap = "choice" + String.valueOf(choiceArr[0]);
			System.out.println(choiceArr[0]);
			System.out.println(chap);
			
			pstmt2.setString(2, chapterChoice);
			
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		ChoiceStatisticsTest test = new ChoiceStatisticsTest();
		
		if(test.SearchStatistics("magic22x")) {
			test.Resetchoice("magic22x");
		} else {
			test.CreateChoice("magic22x");
		}
		
//		test.UpdateChoice("magic22x", 612);
		
	}
}