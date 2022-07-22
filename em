import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import kr.co.greenart.dbutill.DBUtil;

class EnemyStat {
	int Enemy_id;
	String Enemy_name;
	int Enemy_life;
	List<String> Enemy_Drop_Item;
	int Enemy_IniVar;
	String Friendship_3_Script;
	String Friendship_2_Script;
	String Friendship_1_Script;
	String Friendship_0_Script;
	
	public  EnemyStat(int enemy_id, String enemy_name, int enemy_life, List<String> enemy_Drop_Item, int enemy_IniVar,
			String friendship_3_Script, String friendship_2_Script, String friendship_1_Script,
			String friendship_0_Script) {
		super();
		Enemy_id = enemy_id;
		Enemy_name = enemy_name;
		Enemy_life = enemy_life;
		Enemy_Drop_Item = enemy_Drop_Item;
		Enemy_IniVar = enemy_IniVar;
		Friendship_3_Script = friendship_3_Script;
		Friendship_2_Script = friendship_2_Script;
		Friendship_1_Script = friendship_1_Script;
		Friendship_0_Script = friendship_0_Script;
	}
	

	public int getEnemy_life() {
		return Enemy_life;
	}

	public void setEnemy_life(int enemy_life) {
		Enemy_life = enemy_life;
	}

	public int getEnemy_IniVar() {
		return Enemy_IniVar;
	}
	
	public void setEnemy_IniVar(int enemy_IniVar) {
		Enemy_IniVar = enemy_IniVar;
	}
	
	public int getEnemy_id() {
		return Enemy_id;
	}
	
	public String getEnemy_name() {
		return Enemy_name;
	}

	public List<String> getEnemy_Drop_Item() {
		return Enemy_Drop_Item;
	}

	public String getFriendship_3_Script() {
		return Friendship_3_Script;
	}

	public String getFriendship_2_Script() {
		return Friendship_2_Script;
	}

	public String getFriendship_1_Script() {
		return Friendship_1_Script;
	}

	public String getFriendship_0_Script() {
		return Friendship_0_Script;
	}

public class Enemy {
	public void main(String[] args) {
		Map<Integer, Enemy> EnemyMap = null;
		EnemyStat ES;
		
		int Enemy_id;
		String Enemy_name;
		int Enemy_life;
		List<String> Enemy_Drop_Item = new ArrayList<>();
		int Enemy_IniVar;
		String Friendship_3_Script;
		String Friendship_2_Script;
		String Friendship_1_Script;
		String Friendship_0_Script;
		
		try (Connection conn = DBUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM enemy.enemystatus");
				ResultSet rs = pstmt.executeQuery();) {
				while (rs.next()) {
					Enemy_id = rs.getInt("Enemy_id");
					Enemy_name = rs.getString("Enemy_name");
					Enemy_life = rs.getInt("Enemy_name");
					String Item = rs.getString("Item");
					int count = 0;
					for (int i = 0; i < Item.length(); i++) {
						if (Item.charAt(i) == '/') {
							count++;
						}
					};
					String[] ItemList = Item.split("/", count + 1);
					Enemy_Drop_Item = null;
					for(int i = 0; i < ItemList.length; i++) {
						Enemy_Drop_Item.set(i, Arrays.asList(ItemList).get(i));
					}
					int IniVar = rs.getInt("IniVar");
					Friendship_3_Script = rs.getString("Friendship_3_Script");
					Friendship_2_Script = rs.getString("Friendship_2_Script");
					Friendship_1_Script = rs.getString("Friendship_1_Script");
					Friendship_0_Script = rs.getString("Friendship_0_Script");
					
					EnemyMap.put(Enemy_id, 
							new EnemyStat(Enemy_id, Enemy_name, Enemy_life, Enemy_Drop_Item, IniVar, 
									Friendship_3_Script, Friendship_2_Script, Friendship_1_Script, Friendship_0_Script));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(EnemyMap);
	}
}
