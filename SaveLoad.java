//TODO 0729 스탯만 저장하는 버튼이라 동료와 인벤토리 저장을 시켜야함

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JButton;

import kr.co.green.BusanUtil;

public class SaveLoad {
	private JButton btnSave = new JButton();
	
	public JButton getBtnSave() {
		return btnSave;
	}
	
	/////////////////////////세이브 버튼//////////////////////////
	public void SaveButten() {		
		btnSave.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) { // 나중에 아이디도 getId로 꺼내서 넣기! 지금은 지정되어있음!
				
				saveMyDB("magic22x");
			}
		});
	}

	////////////아이디가 있는지 없는지 검색해서 있으면 true값 반환, 없으면 update//////////
	public boolean haveMyDB(String ID) { // 이건 필요할지 애매해서 스탯까지만 일단 만들어둠! 필요하면 동료랑 아이템 리스트 추가
		boolean have = false;
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.savehere");
				PreparedStatement pstmt2 = conn.prepareStatement("INSERT INTO Busan.savehere (userId, userStat) "
																+ "VALUES (?, '5/5/3/0/0')");
				ResultSet rs = pstmt.executeQuery();) {
			
			while (rs.next()) {
				if(ID.equals(rs.getString("userId"))) {
					have = true;
				}
			}
			
			if(have = false) {
				pstmt2.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return have;
	}
	
	////////////////////////DB에 저장시킬 메소드 //////////////////////////
	public void saveMyDB(String ID) {
		UserInfo user = new UserInfo();
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("UPDATE Busan.savehere SET userStat = ?, party = ?, item = ? WHERE userId = ?");) {

			String stat = "";
			stat = stat.concat(user.getHp() + "/" + user.getMental() + "/" + user.getBleed() + "/" + user.getBlue() 
								+ "/" + user.getNpc_likability());
			System.out.println(stat);
			
			String party = "";
			for(int i = 0; i < user.getParty().size(); i++) {
				if (i > 0 ) {
					party = party.concat("/" + user.getParty().get(i));
				} else {
					party = party.concat("" + user.getParty().get(i));
				}
			}
			
			String inventory = "";
			for(int i = 0; i < user.getInventory().size(); i++) {
				if (i > 0 ) {
					party = party.concat("/" + user.getInventory().get(i).getItem_id() + "-" 
				+ user.getInventory().get(i).getItem_durability() + "-" 
				+ user.getInventory().get(i).getItem_count());
				} else {
					party = party.concat("" + user.getInventory().get(i).getItem_id() + "-" 
							+ user.getInventory().get(i).getItem_durability() + "-" 
							+ user.getInventory().get(i).getItem_count());
				}
			}
			
			pstmt.setString(1, stat);
			pstmt.setString(2, party);
			pstmt.setString(3, inventory);
			pstmt.setString(4, ID);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	///////////////////////불러오는 메소드 //////////////////////////
	public void loadMyDB(String ID) {
		UserInfo user = new UserInfo();
		Item item;
		
		String[] stat = null;
		
		String party = "";
		String inventory = "";
		
		List<Item> itemlist = new ArrayList<>();
		
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Busan.savehere");
				ResultSet rs = pstmt.executeQuery();) {

			while (ID.equals(rs.getString("userId"))) {
				String userStat = rs.getString("userStat");
				stat = userStat.split("/");
				
				party = rs.getString("party");
				inventory = rs.getString("item");
			}
			
			user.setHp(Integer.valueOf(stat[0]));
			user.setMental(Integer.valueOf(stat[1]));
			user.setBleed(Integer.valueOf(stat[2]));
			user.setBlue(Integer.valueOf(stat[3]));
			user.setNpc_likability(Integer.valueOf(stat[4]));
			
			String[] partyArr = party.split("/");
			List<Integer> partylistload = null;
			
			for (int i = 0; i < partyArr.length; i++) {
				partylistload.add(Integer.valueOf(partyArr[i]));
			}
			user.setParty(partylistload);
			
			String[] invenArr = inventory.split("/");
			String[] itemArr;
			for (int i = 0; i < invenArr.length; i++) {
				itemArr = invenArr[0].split("-");
				
				item = new Item(Integer.valueOf(itemArr[0]), Integer.valueOf(itemArr[1]), Integer.valueOf(itemArr[2]));
				
				itemlist.add(item);
			}
			
			user.setInventory(itemlist);
			
			System.out.println("현재 유저의 HP:" + user.getHp() 
							+ ", Mental:" + user.getMental() 
							+ ", Bleed:" + user.getBleed() 
							+ ", Blue:" + user.getBlue());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	////////////////////////다회차 시작할 때 초기화시킬 메소드 //////////////////////////
	public void resetMyDB(String ID) {
		try (Connection conn = BusanUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("UPDATE Busan.savehere SET userStat = '5/5/3/0/0', "
						+ "party = null, item = null WHERE userId = ?");) {
			
			pstmt.setString(1, ID);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) {
		SaveLoad sl = new SaveLoad();
		
//		sl.saveMyDB("magic22x");
		sl.resetMyDB("magic22x"); // 리셋
	}

}
