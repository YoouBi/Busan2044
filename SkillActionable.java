

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SkillActionable {
	public String stringItem(List item) {
		String itemInt = "";
		for (int i=0; i<item.size(); i++) {
			if (i==0) {
				itemInt = itemInt.concat(String.valueOf(item.get(i)));
			} else {
				itemInt = itemInt.concat(", ");
				itemInt = itemInt.concat(String.valueOf(item.get(i)));
			}
		}
		
		return itemInt;
	}
	
	public List evasionAction(int enemyId, List item) { // 회피
		List<Skill> attackSkill = new ArrayList<>();
		
		String itemInt = stringItem(item);
		
		String skill = "SELECT * FROM busan.skill WHERE floor(skill_id / 1000) = 1 " // 행동 타입
				+ "AND floor(skill_id % 1000 / 100) = ? " // 적타입
				+ "AND (skill_needItem is null or skill_needItem in (?));";
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(skill);
				ResultSet rs = pstmt.executeQuery();) {
			
			pstmt.setInt(1, (int)(enemyId / 10));
			pstmt.setString(2, itemInt);
			pstmt.setString(3, itemInt);
			
			while (rs.next()) {
				attackSkill.add(resultMapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return attackSkill;
	}
	
	public List attckAction(int enemyId, List item) { // 공격 스킬 꺼내는 메소드
		List<Skill> attackSkill = new ArrayList<>();
		
		String itemInt = stringItem(item);
		
		String skill = "SELECT * FROM busan.skill WHERE floor(skill_id / 1000) = 2 "
				+ "AND floor(skill_id % 1000 / 100) = ? " // 적타입
				+ "AND (skill_needItem is null or skill_needItem in (?));";
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(skill);
				ResultSet rs = pstmt.executeQuery();) {
			
			pstmt.setInt(1, (int)(enemyId / 10));
			pstmt.setString(2, itemInt);
			pstmt.setString(3, itemInt);
			
			while (rs.next()) {
				attackSkill.add(resultMapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return attackSkill;
	}
	
	public List surpriseAction(int enemyId, List item) { // 기습
		List<Skill> attackSkill = new ArrayList<>();
		
		String itemInt = stringItem(item);
		
		String skill = "SELECT * FROM busan.skill WHERE floor(skill_id / 1000) = 3 "
				+ "AND floor(skill_id % 1000 / 100) = ? "
				+ "AND (skill_needItem is null or skill_needItem in (?));";
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(skill);
				ResultSet rs = pstmt.executeQuery();) {
			
			pstmt.setInt(1, (int)(enemyId / 10));
			pstmt.setString(2, itemInt);
			pstmt.setString(3, itemInt);
			
			while (rs.next()) {
				attackSkill.add(resultMapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return attackSkill;
	}
}
