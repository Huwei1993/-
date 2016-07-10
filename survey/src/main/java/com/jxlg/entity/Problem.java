package com.jxlg.entity;

/**
 * 问题实体类
 * 
 * @author feng
 * 
 */
public class Problem {
	private int id; // 问题id
	private String question; // 问题
	private String aanswer; // a选项
	private String banswer; // b选项
	private String canswer; // c选项
	private String danswer; // d选项
	private int agrade; // a选项分数
	private int bgrade; // a选项分数
	private int cgrade; // a选项分数
	private int dgrade; // a选项分数
	private int ptid;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAanswer() {
		return aanswer;
	}

	public void setAanswer(String aanswer) {
		this.aanswer = aanswer;
	}

	public String getBanswer() {
		return banswer;
	}

	public void setBanswer(String banswer) {
		this.banswer = banswer;
	}

	public String getCanswer() {
		return canswer;
	}

	public void setCanswer(String canswer) {
		this.canswer = canswer;
	}

	public String getDanswer() {
		return danswer;
	}

	public void setDanswer(String danswer) {
		this.danswer = danswer;
	}

	public int getAgrade() {
		return agrade;
	}

	public void setAgrade(int agrade) {
		this.agrade = agrade;
	}

	public int getBgrade() {
		return bgrade;
	}

	public void setBgrade(int bgrade) {
		this.bgrade = bgrade;
	}

	public int getCgrade() {
		return cgrade;
	}

	public void setCgrade(int cgrade) {
		this.cgrade = cgrade;
	}

	public int getDgrade() {
		return dgrade;
	}

	public void setDgrade(int dgrade) {
		this.dgrade = dgrade;
	}

	public int getPtid() {
		return ptid;
	}

	public void setPtid(int ptid) {
		this.ptid = ptid;
	}

	public Problem(int id, String question, String aanswer, String banswer,
			String canswer, String danswer, int agrade, int bgrade, int cgrade,
			int dgrade, int ptid) {
		super();
		this.id = id;
		this.question = question;
		this.aanswer = aanswer;
		this.banswer = banswer;
		this.canswer = canswer;
		this.danswer = danswer;
		this.agrade = agrade;
		this.bgrade = bgrade;
		this.cgrade = cgrade;
		this.dgrade = dgrade;
		this.ptid = ptid;
	}

	public Problem() {
		super();
	}

	@Override
	public String toString() {
		return "Problem [id=" + id + ", question=" + question + ", aanswer="
				+ aanswer + ", banswer=" + banswer + ", canswer=" + canswer
				+ ", danswer=" + danswer + ", agrade=" + agrade + ", bgrade="
				+ bgrade + ", cgrade=" + cgrade + ", dgrade=" + dgrade
				+ ", ptid=" + ptid + "]";
	}

}
