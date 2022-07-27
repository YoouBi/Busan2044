import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class EndStaPTest extends JFrame {
	public EndStaPTest() {
		Statistics st = new Statistics();
		
		double result = st.EndingStatistics(1);
		int headCount = (int)(result / 10000);
		double persent = result % 10000 / 100;
		System.out.println(result + "\n이 엔딩을 본 사람은 " + (int)(result / 10000) 
				+ "명이고 전체의 " + result % 10000 / 100 + "% 입니다.");
		
		
		JPanel ststisAll = new JPanel();
		
		JLabel yourAchv = new JLabel("업적 미획득");
		yourAchv.setBounds(770, 296, 267, 15);
		JLabel yourChoice = new JLabel("당신과 같은 선택을 한 사람들은 " + "?명이 있습니다.");
		yourChoice.setBounds(770, 321, 312, 15);
		JLabel yourEnding = new JLabel("동료 ??와 함께 엔딩을 봤습니다.");
		yourEnding.setBounds(799, 346, 212, 15);
		JLabel endingCount = new JLabel("이 엔딩은 " + headCount + "명의 사람들이 봤습니다.");
		endingCount.setBounds(770, 202, 241, 15);
		JLabel endingPersent = new JLabel(persent + "%의 사람들이 이 엔딩을 봤습니다.");
		endingPersent.setBounds(770, 227, 241, 15);
		ststisAll.setLayout(null);
		
		ststisAll.add(yourAchv);
		ststisAll.add(yourChoice);
		ststisAll.add(yourEnding);
		ststisAll.add(endingCount);
		ststisAll.add(endingPersent);
		
		getContentPane().add(ststisAll);
		
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setSize(1200, 900);
	}
	
//	public void paint(Graphics g) {
//		g.setColor(Color.yellow); // 10대
//        g.fillArc(100, 100, 200, 200, 0, (int) num10Angle);
//        g.setColor(Color.blue); // 20대
//        g.fillArc(100, 100, 200, 200, (int) num10Angle, (int) num20Angle);
//        g.setColor(Color.green); // 30대
//        g.fillArc(100, 100, 200, 200, (int) (num10Angle + num20Angle), (int) num30Angle);
//        g.setColor(Color.orange); // 40대
//        g.fillArc(100, 100, 200, 200, (int) (num10Angle + num20Angle + num30Angle), (int) num40Angle);
//	}
//	
//	public double getRatio(int numWhole, int numPart) { // 비율 구하기
//        double ratio = ((double) numPart / (double) numWhole) * 100; 
//    // 결과 double이려면 인수도 double로 casting
//        return ratio;
//	}
//
//	public double getAngle(double ratio) { // 중심각 구하기
//        double angle = 3.6 * ratio;
//        return angle;
//	}
		
	public static void main(String[] args) {
		new EndStaPTest().setVisible(true);
	}
}