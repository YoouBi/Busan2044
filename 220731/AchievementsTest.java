

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import kr.co.green.BusanUtil;

// 개인 업적은 path 테이블에 붙여놨는데
// 통계 테이블은 중요한 선택지만 넣어두고 죽거나 엔딩나면 DB에 더해지도록 만들자!
// 둘 다 꺼내 쓸 수 있도록...
// 업적은 개인 배열로 꺼낼 수 있게 01(칭호'??')/03(칭호'??')

// TODO 무슨무슨 업적 있는지 한글로 꺼내는 메소드,


// TODO 개인 업적 테이블도 생성해줘야함!!!!!!!!!!!!!!
// 업적 id만 치면 무슨 업적인지 나오는 메소드...
public class AchievementsTest { // 업적 달성 // login_info에 숫자로 입력하고 꺼낼 때 업적 String 변환 메소드	
	// 나눈 String[] 배열에서 원하는 값이 있는지 검색하는 메소드
	public boolean searchArr(String[] strArr, int num) {
		boolean search = false;
		
		for (int i = 0; i < strArr.length; i++) {
			if (Integer.valueOf(strArr[i]) == num) {
				search = true;
			}
		}
		
		return search;
	}
	
	// 가져온 value 스트링을 set으로 변환하고 int값 더해서 다시 arraylist로 정렬해서 String으로 뱉어내는 메소드 작성
	public String arraysValue(String value, int plus) {
		String[] valueArr = value.split("/");
		Set<Integer> valueSet = new HashSet<>();
		
		for (int i = 0; i < valueArr.length; i++) {
			valueSet.add(Integer.valueOf(valueArr[i]));
		}
		
		valueSet.add(plus);
		List<Integer> valueList = new ArrayList<>(valueSet);
		Arrays.asList(valueList);
		
		value = "";
		
		for (int i = 0; i < valueSet.size(); i++) {
			if(i > 0) {
				value = value.concat("/" + valueList.get(i));
			} else {
				value = value.concat("" + valueList.get(i));
			}
		}
		
		return value;
	}
	
	public void addAchv(String id) { // 회차 끝나고 player_info 확인 후 업적 있으면 업적 테이블에 더해주기
		String AchvStr = "";
		String[] arr = null;
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.player_info");
				PreparedStatement pstmt2 = conn.prepareStatement("UPDATE Busan.player_info SET yourAchv = ? WHERE id = ?");
				ResultSet rs = pstmt.executeQuery();) {
			
			while(rs.next()) {
				if(id.equals(rs.getString("id"))) {
					// 동료 다 모았을 때 업적 추가
					arr = rs.getString("yourAttainment").split("/");
					if(searchArr(arr, 7907) 
							&& searchArr(arr, 7908)
							&& searchArr(arr, 7909)
							&& searchArr(arr, 7910)
							&& searchArr(arr, 7911)) {
						addPlayerInfo(id, "yourAchv", 4);
					}
					
					// 엔딩 다 봤을 때 업적 추가
					if("1/2/3/4/5/6/7".equals(rs.getString("yourEnding"))) { // TODO 되는지 확인하기
						addPlayerInfo(id, "yourAchv", 6);
					}
				}
			}
			
			pstmt2.setString(1, AchvStr);
			pstmt2.setString(2, id);
			
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
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
		
		String yourSave1 = "";
		String yourSave2 = "";
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.savehere");
				PreparedStatement pstmt2 = conn.prepareStatement("SELECT * FROM Busan.statistics_crossrode");
				PreparedStatement pstmt3 = conn.prepareStatement("UPDATE Busan.statistics_crossrode SET headCount = ? WHERE num = ?");
				PreparedStatement pstmt4 = conn.prepareStatement("INSERT INTO statistics_crossrode(storyPath1, storyPath2, headCount) VALUES (?, ?, 1)");
				// 업적 달성 조건과 업적 업로드
				PreparedStatement pstmt5 = conn.prepareStatement("SELECT * FROM Busan.player_info");
				PreparedStatement pstmt6 = conn.prepareStatement("INSERT INTO player_info(id) VALUES " + id);
				// TODO 메소드 나누기
				ResultSet rs = pstmt.executeQuery();
				ResultSet rs2 = pstmt2.executeQuery();
				ResultSet rs3 = pstmt5.executeQuery();) {
			
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

			while (rs3.next()) {
				if(!(id.equals(rs3.getString("id")))) {
					pstmt6.executeUpdate();
				} else {
					for (int i = 0; i < saveArr1.length; i++) {
						if (7 <= Integer.valueOf(saveArr1[i]) && Integer.valueOf(saveArr1[i]) <= 11) { // 7907 조건으로 추가
							addPlayerInfo(id, "yourAttainment", 7900 + Integer.valueOf(saveArr1[i]));
						}
						if (Integer.valueOf(saveArr1[i]) == 12) { // 개죽음 업적 추가
							addPlayerInfo(id, "yourAchv", 1);
						}
					}
				}
			}
			
			yourSave1 = "";
			yourSave2 = "";
			
			for(int i = 0; i < saveArr1.length; i++) {
				if(i > 0) {
					yourSave1 = yourSave1.concat("/" + saveArr1[i]);
				} else {
					yourSave1 = yourSave1.concat(saveArr1[i]);
				}
			}
			
			for (int i = 0; i < saveArr2.length; i++) {
				if(i > 0) {
					yourSave2 = yourSave2.concat("/" + saveArr2[i]);
				} else {
					yourSave2 = yourSave2.concat(saveArr2[i]);
				}
			}
			
			while (rs2.next()) { // 튜토리얼도 못 깬 업적 체크할 때  다음 선택지가 나오기 전에 전투에서 죽었는지의 조건도 넣어야함
				if(yourSave1.equals(rs2.getString("storyPath1"))){
					System.out.println(rs2.getString("storyPath1"));
					havePath1 = true;
					num1 = rs2.getInt("num");
					
					crHeadCount = rs2.getInt("headCount") + 1;
				}
				
				if(yourSave2.equals(rs2.getString("storyPath2"))) {
					System.out.println(rs2.getString("storyPath2"));
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
			
			if(saveMe) {
				pstmt3.setInt(1, crHeadCount);
				pstmt3.setInt(2, num1);
				
				pstmt3.executeUpdate();
			} else {
				crHeadCount = 1;
				
				pstmt4.setString(1, yourSave1);
				pstmt4.setString(2, yourSave2);
				
				pstmt4.executeUpdate(); // 필요하면 다회차 루트 어디로 갔는지 볼 수 있게
			}
			
			System.out.println(saveMe);
			
			System.out.println(yourSave1);
			System.out.println(yourSave2);
			
			System.out.println(crHeadCountSum);
			System.out.println(crHeadCount);
			
			statis = Math.floor((crHeadCount + (double)crHeadCount / crHeadCountSum) * 10000);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return statis;
	}
	
	// 엔딩 시 자동 업로드가 아닌 직접 입력해야하는 조건, 엔딩, 승리횟수, 업적 추가할 때 쓰는 메소드
	// 개인 DB에 업적 추가해서 중복은 없애고(set) 순서대로 정렬하는(arraylist) 메소드
	public void addPlayerInfo(String id, String column, int plus) { //TODO 승리횟수 추가해야함!
		String columnQuery = "UPDATE Busan.player_info SET "+ column +" = ? WHERE id = ?";
//		String query2 = "UPDATE Busan.player_info SET yourEndings = ? WHERE id = ?";
//		String query3 = "UPDATE Busan.player_info SET yourAchv = ? WHERE id = ?";
		
//		if(column.equals("yourAttainment")) {
//			columnQuery = query1;
//		} else if(column.equals("yourEndings")) {
//			columnQuery = query2;
//		} else if(column.equals("yourAchv")) {
//			columnQuery = query3;
//		}
		
		String value = null;
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.player_info");
				PreparedStatement pstmt2 = conn.prepareStatement(columnQuery);
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if(id.equals(rs.getString("id"))) {
					if (column.equals("yourAttainment") || column.equals("yourEndings") || column.equals("yourAchv")) {
						value = rs.getString(column);
					}
				}
			}
			
//			pstmt2.setString(1, column);
			pstmt2.setString(1, arraysValue(value, plus));
			pstmt2.setString(2, id);
			
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 전투 승리 카운트 메소드
	
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
//		double result = ac.countCrossrode("eeee");
		
		ac.addPlayerInfo("magic22x", "yourEndings", 5);
		
//		System.out.println(ac.haveCrossrode("magic22x"));
//		if(ac.haveCrossrode("magic22x")) {
//			
//		} else {
//			ac.addCrossrode("2/4/5/", "2/4/6");
//		}
//		System.out.println(result + "\n당신과 같은 선택을 한 사람은 " + (int)(result / 10000) 
//				+ "명이고 전체의 " + result % 10000 / 100 + "%가 이 선택을 했습니다.");
	}
}