import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import kr.co.green.BusanUtil;

public class SkillImpl {
	
	private Skill resultMapping(ResultSet rs) throws SQLException {
		int id = rs.getInt("Skill_id");
		int type = rs.getInt("Skill_type");
		String name = rs.getString("Skill_name");
		int power = rs.getInt("Skill_power");
		int aim = rs.getInt("Skill_aim");
		String needItem = rs.getString("Skill_needItem");
		
		String criticalScript = rs.getString("Skill_criticalScript");
		String sucessScript= rs.getString("Skill_sucessScript");
		String failScript= rs.getString("Skill_failScript");
		String fumbleScript= rs.getString("Skill_fumbleScript");
		
		return new Skill(id, type, name, aim, power, needItem, criticalScript, sucessScript, failScript, fumbleScript);
	}
	
// skill - enemy 연동
// 1. 몬스터 타입 맞는 액션스킬 중에 필요아이템이 null이거나 아이템이 인벤토리에 있는 것.
// 2. 나머지 스킬 중에 필요아이템이 null이거나 아이템이 인벤토리에 있는 것.
	
//	SELECT * FROM busan.skill where floor(skill_id%1000/100) = 2 
//		and (skill_needItem is null or skill_needItem in (1, 2, 3))
//			union
//			select * from busan.skill where floor(skill_id/1000) > 1
//			and (skill_needItem is null or skill_needItem in (1, 2, 3));
	
//	List<Skill> readSkillset(Enemy enemy, SaveInfo user) {
//		int enemyId = enemy.getId()/10;
//		
//		List<Item> inventory = user.getInventory();
//		List<Integer> itemList = new ArrayList<>();
//		
//		for (Item item : inventory) {
//			int a = item.getItem_id();
//			itemList.add(a);
//		}
//		
//		String itemInt = "";
//		for (int i=0; i<itemList.size(); i++) {
//			if (i==0) {
//				itemInt = itemInt.concat(String.valueOf(itemList.get(i)));
//			} else {
//				itemInt = itemInt.concat(", ");
//				itemInt = itemInt.concat(String.valueOf(itemList.get(i)));
//			}
//		}
//		
//		String query = "SELECT * FROM busan.skill where floor(skill_id%1000/100) = ? "
//		+" and (skill_needItem is null or skill_needItem in (?) )"
//				+" union"
//				+" select * from busan.skill where floor(skill_id/1000) > 1"
//				+" and (skill_needItem is null or skill_needItem in (?) );";
//		
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		List<Skill> skill = new ArrayList<>();
//		
//		try {
//			conn = BusanUtil.getConnection();
//			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, String.valueOf(enemyId));
//			pstmt.setString(2, itemInt);
//			pstmt.setString(3, itemInt);
//			rs = pstmt.executeQuery();
//			
//			while (rs.next()) {
//				skill.add(resultMapping(rs));
//			}
//		
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			BusanUtil.closeRS(rs);
//			BusanUtil.closeStmt(pstmt);
//			BusanUtil.closeConn(conn);
//		}
//		return skill;
//	}

	// 전체 스킬 읽어오기
	List<Skill> readSkill() {
		String query = "SELECT * FROM skill";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Skill> skill = new ArrayList<>();
		
		try {
			conn = BusanUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				skill.add(resultMapping(rs));
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BusanUtil.closeRS(rs);
			BusanUtil.closeStmt(pstmt);
			BusanUtil.closeConn(conn);
		}
		return skill;
	}
	
	public String stringItem(List<Item> item) {
		List<Integer> itemIDList = new ArrayList<>();
		for (Item i : item) {
			int a = i.getItem_id();
			itemIDList.add(a);
		}
		String itemInt = "";
		for (int i=0; i<item.size(); i++) {
			if (i==0) {
				itemInt = itemInt.concat(String.valueOf(itemIDList.get(i)));
			} else {
				itemInt = itemInt.concat(", ");
				itemInt = itemInt.concat(String.valueOf(itemIDList.get(i)));
			}
		}
		return itemInt;
	}
	
	//////
	// 액션 스킬
	public List<Skill> evasionAction(int enemyId, List<Item> item) { // 회피
		List<Skill> attackSkill = new ArrayList<>();
		
		String itemInt = stringItem(item);
		
		String skill = "SELECT * FROM busan.skill WHERE (floor(skill_id / 100 % 10) = " + (int)(enemyId / 10)
				+ " or floor(skill_id / 100 % 10) = 0)"
				+ " AND floor(skill_id / 1000) = 1" 
				+ " AND (skill_needItem is null or skill_needItem in ( " + itemInt
				+ " ));";
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(skill);
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				attackSkill.add(resultMapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return attackSkill;
	}
	
	// 어택
	public List<Skill> attckAction(int enemyId, List<Item> item) { // 공격 스킬 꺼내는 메소드
		List<Skill> attackSkill = new ArrayList<>();
		
		String itemInt = stringItem(item);
		
		String skill = "SELECT * FROM busan.skill WHERE (floor(skill_id / 100 % 10) = " + (int)(enemyId / 10)
				+ " or floor(skill_id / 100 % 10) = 0)"
				+ " AND floor(skill_id / 1000) = 2" 
				+ " AND (skill_needItem is null or skill_needItem in ( " + itemInt
				+ " ));";
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(skill);
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				attackSkill.add(resultMapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return attackSkill;
	}
	
	// 기습
	public List<Skill> surpriseAction(int enemyId, List<Item> item) { // 기습
		List<Skill> attackSkill = new ArrayList<>();
		
		String itemInt = stringItem(item);
		
		String skill = "SELECT * FROM busan.skill WHERE (floor(skill_id / 100 % 10) = " + (int)(enemyId / 10)
				+ " or floor(skill_id / 100 % 10) = 0)"
				+ " AND floor(skill_id / 1000) = 3"
				+ " AND (skill_needItem is null or skill_needItem in ( " + itemInt
				+ " ));";
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(skill);
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				attackSkill.add(resultMapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return attackSkill;
	}
	
	/////////////임의의 유저
	public SaveInfo setUserData() {
		SaveInfo user = new SaveInfo();
		user.setHp(5);
//		      Item item1 = new Item(1, 2, 1); // 몽둥이
//		      Item item2 = new Item(4, 2, 1); // 권총
		Item item3 = new Item(9, 10, 1); // 육포

		List<Item> inven = new ArrayList<>();
//		      inven.add(item1);
//		      inven.add(item2);
		inven.add(item3);

		user.setInventory(inven);

		return user;
	}
	
	public static void main(String[] args) {
		SkillImpl si = new SkillImpl();
		List<Item> it = si.setUserData().getInventory();
		List<Skill> l = si.attckAction(11, it);
		
		System.out.println(l.toString());
	}
}
