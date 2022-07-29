package busan2044;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.LineBorder;

import kr.co.green.BusanUtil;

import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class Chapter2_Screen extends JFrame {
	public JPanel pnlTxt2;
	private JPanel choicePnl;

	private JButton[] btnChoice = new JButton[4];
	private JPanel startPnl;
	private JButton rest;
	private JButton shop;
	private JButton search;
	private JScrollPane jsp2;
	private JTextArea textArea;

	private List<Story> list2 = new ArrayList<>();
	private List<ChoiceSum> choiceList2 = new ArrayList<>();

	private ChoiceSum getAchoice2(int random) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		choiceList2 = new ArrayList<>();

		try {
			conn = BusanUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM `busan`.chapter2_choiceSum");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ChoiceSum cic = new ChoiceSum(rs.getInt("choiceId"), rs.getString("storyNum"),
						rs.getString("choiceMain"), rs.getString("StoryMain"), rs.getString("storyCheck"),
						rs.getString("choiceCheck"));
				choiceList2.add(cic);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BusanUtil.closeRS(rs);
			BusanUtil.closeStmt(pstmt);
			BusanUtil.closeConn(conn);
		}
		return choiceList2.get(random);
	}

	private Story getAstory2(int selecRow) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		list2 = new ArrayList<>();

		try {

			conn = BusanUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM busan.chapter2_storyonly");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Story str = new Story(rs.getInt("storyId"), rs.getString("storyNum"), rs.getString("storyMain"),
						rs.getString("storyTime"), rs.getString("check"));

				list2.add(str);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BusanUtil.closeRS(rs);
			BusanUtil.closeStmt(pstmt);
			BusanUtil.closeConn(conn);
		}
		return list2.get(selecRow);
	}

	public Chapter2_Screen() {
		super("Chater2");

		pnlTxt2 = new JPanel();
		pnlTxt2.setBounds(12, 10, 824, 841); // 크기를 정해줘야 다른 class에서 사용 가능
		pnlTxt2.setBorder(new LineBorder(new Color(0, 0, 0)));

		jsp2 = new JScrollPane();
		jsp2.setBounds(12, 10, 800, 569);
		pnlTxt2.add(jsp2);

		textArea = new JTextArea();
		jsp2.setViewportView(textArea);
		textArea.setEditable(false);
		jsp2.setVisible(false);

//		선택지 시작
		choicePnl = new JPanel();
		choicePnl.setBounds(12, 579, 800, 252);
		pnlTxt2.add(choicePnl);
		choicePnl.setLayout(null);
		choicePnl.setVisible(false);

		int a = 10;
		for (int i = 0; i < btnChoice.length; i++) {
			btnChoice[i] = new JButton("선택지1");
			btnChoice[i].setBounds(12, a, 776, 52);
			a += 62;
			choicePnl.add(btnChoice[i]);
		}
//		선택지 끝

		getContentPane().add(pnlTxt2);
		pnlTxt2.setLayout(null);

		startPnl = new JPanel();
		startPnl.setBounds(413, 76, 383, 374);
		pnlTxt2.add(startPnl);
		startPnl.setLayout(null);

		search = new JButton("탐색");
		search.setBounds(44, 82, 300, 64);
		startPnl.add(search);

		search.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				for (int i = 0; i < 20; i++) {
					System.out.println(getAstory2(i).getStoryMain());
					System.out.println("===============================================");
					System.out.println(getAchoice2(i).getChoiceMain());
				}
				startPnl.setVisible(false);
				jsp2.setVisible(true);
			}
		});

		shop = new JButton("상점");
		shop.setBounds(44, 156, 300, 64);
		startPnl.add(shop);

		rest = new JButton("휴식");
		rest.setBounds(44, 230, 300, 64);
		startPnl.add(rest);

		setSize(830, 870);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setResizable(false);

	}

	public static void main(String[] args) {
		new Chapter2_Screen().setVisible(true);
	}
}
