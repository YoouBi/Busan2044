

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;

import kr.co.green.BusanUtil;

// 개인 업적은 path 테이블에 붙여놨는데
// 통계 테이블은 중요한 선택지만 넣어두고 죽거나 엔딩나면 DB에 더해지도록 만들자!
// 둘 다 꺼내 쓸 수 있도록...
// 업적은 개인 배열로 꺼낼 수 있게 01(칭호'??')/03(칭호'??')

// TODO 개인 업적 테이블도 생성해줘야함!!!!!!!!!!!!!!
// 업적 id만 치면 무슨 업적인지 나오는 메소드...
public class AchievementsTest { // 업적 달성 // login_info에 숫자로 입력하고 꺼낼 때 업적 String 변환 메소드	
	Set<Integer> attainment;
	
	public String yourAchv(String id) { // 선택지 넣어서 업적 있으면 업적 테이블에 더해주기
		String AchvStr = "";
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.savehere");
				PreparedStatement pstmt2 = conn.prepareStatement("SELECT * FROM Busan.statistics_crossrode");
				PreparedStatement pstmt3 = conn.prepareStatement("UPDATE Busan.login_choice");
				ResultSet rs = pstmt.executeQuery();
				ResultSet rs2 = pstmt2.executeQuery();) {
			
			while(rs.next()) {
				if(id.equals(rs.getString("id"))) {
					rs.getString("storyPath1");
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return AchvStr;
	}
	String saveHere;
	
	public double countCrossrode(String id) { // 선택지 넣어서 통계
		int crHeadCount = 1;
		int crHeadCountSum = 0;
		int num1 = 0;
		int num2 = 0;
		int have = 0;
		
		double statis = 0.0;
		
		boolean havePath1 = false;
		boolean havePath2 = false;
		boolean saveMe = false;
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.savehere");
				PreparedStatement pstmt2 = conn.prepareStatement("SELECT * FROM Busan.statistics_crossrode");
				PreparedStatement pstmt3 = conn.prepareStatement("UPDATE Busan.statistics_crossrode SET headCount = ? WHERE num = ?");
//				PreparedStatement pstmt4 = conn.prepareStatement("INSERT INTO statistics_crossrode (storyPath1, storyPath2, headCount) VALUES (?, ?, 1)");
				ResultSet rs = pstmt.executeQuery();
				ResultSet rs2 = pstmt2.executeQuery();) {
			
			String yourSave1 = "";
			String yourSave2 = "";
			while (rs.next()) {
				if (id.equals(rs.getString("userId"))) {
					yourSave1 = rs.getString("storyPath1");
					yourSave2 = rs.getString("storyPath2");
				}
			}
			
			yourSave1 = yourSave1.replace(" ", "").replace("[", "").replace("]", "");
			yourSave2 = yourSave2.replace(" ", "").replace("[", "").replace("]", "");
			String[] saveArr1 = yourSave1.split(",");
			String[] saveArr2 = yourSave2.split(",");

//			if (saveArr.length == 3) { // 이건 나중에 업적 추가로...
//				yourSave = "0-0-0";
//			}
			
			yourSave1 = "";
			yourSave2 = "";
			
			System.out.println(saveArr1[1]);
			
			for(int i = 0; i < saveArr1.length; i++) {
				if(i > 0) {
					yourSave1 = yourSave1.concat("/" + saveArr1[i]);
				} else {
					yourSave1 = yourSave1.concat(saveArr1[i]);
				}
			}
			
			System.out.println(yourSave1);
			
			for (int i = 0; i < saveArr2.length; i++) {
				if(i > 0) {
					yourSave2 = yourSave2.concat("/" + saveArr2[i]);
				} else {
					yourSave2 = yourSave2.concat(saveArr2[i]);
				}
			}
			
			while (rs2.next()) { // 튜토리얼도 못 깬 업적 체크할 때  다음 선택지가 나오기 전에 전투에서 죽었는지의 조건도 넣어야함
				if(yourSave1.equals(rs2.getString("storyPath1"))){
					havePath1 = true;
					num1 = rs2.getInt("num");
					
					crHeadCount = rs2.getInt("headCount") + 1;
				}
				
				if(yourSave2.equals(rs2.getString("storyPath2"))) { // 조건 다시 달자...
					havePath2 = true;
					num2 = rs2.getInt("num");
				}
				
				crHeadCountSum += rs2.getInt("headCount");
			}
			
			if((havePath1 && havePath2) && num1 == num2) {
				have = 1;
				saveMe = true;
			}
			
			crHeadCountSum++;
			
			if(saveMe = true) {
				pstmt3.setInt(1, crHeadCount);
				pstmt3.setInt(2, num1);
				
				pstmt3.executeUpdate();
			} else {
				crHeadCount = 1;
				
				addCrossrode(yourSave1, yourSave2);
//				pstmt4.setString(1, yourSave1);
//				pstmt4.setString(2, yourSave2);
//				
//				pstmt4.executeBatch();
			}
			
			System.out.println(saveMe);
			
			System.out.println(yourSave1);
			System.out.println(yourSave2);
			
			System.out.println(crHeadCountSum);
			System.out.println(crHeadCount);
			
			statis = Math.floor((crHeadCount * 10 + have + (double)crHeadCount / crHeadCountSum) * 10000);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return statis;
	}
	
	
	//////////////// 없으면 생성 추가//////////////////////////
	
	public void addCrossrode(String yourSave1, String yourSave2) {
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("INSERT INTO statistics_crossrode "
						+ "(storyPath1, storyPath2, headCount) "
						+ "VALUES (?, ?, 1)");) {
			
//			while(rs.next()) {
//				if(id.equals(rs.getString("id"))) {
//					path1 = rs.getString("storyPath1");
//					path2 = rs.getString("storyPath2");
//				}
//			}
			
			pstmt.setString(1, yourSave1);
			pstmt.setString(2, yourSave2);
			
//			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 엔딩 시 자동 업로드가 아닌 직접 입력해야하는 업적 추가할 때 쓰는 메소드
	// 개인 DB에 업적 추가해서 순서대로 정렬하는(set) 메소드 만들어야함~~~
	public void addMyDBAchv(String id, int count) {
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("INSERT INTO statistics_crossrode "
						+ "(storyPath1, storyPath2, headCount) "
						+ "VALUES (?, ?, 1)");) {

			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String searchAchv(String AchvId) { // 업적 검색해서 String으로 반환하는 메소드
		String achv = "";
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.login_choice");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if(1 == 1) {
					// 개발자는 코딩코딩 0
					// 튜토리얼도 못 깬 1
					// 좀비와의 첫 만남을 한 2
					// 좀비와 몇번 전투해서 많이 죽으면? -> 좀비의 동료가 된
					// 모든 동료를 모은 4
					// 모든 적을 마주친?? 
					// 유니버스에 통달한
					// npc에게 죽은 7
					// 어딘가의 효자
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return achv;
	}
	
	public static void main(String[] args) {
		AchievementsTest ac = new AchievementsTest();
		double result = ac.countCrossrode("eeee");
		
		
//		System.out.println(ac.haveCrossrode("magic22x"));
//		if(ac.haveCrossrode("magic22x")) {
//			
//		} else {
//			
//		}
		System.out.println(result + "\n당신과 같은 선택을 한 사람은 " + (int)(result / 100000) 
				+ "명이고 전체의 " + result % 10000 / 100 + "%가 이 선택을 했습니다.");
	}
}