package com.jxlg.entity;

/**
 * 用户答案表
 * 
 * @author feng
 * 
 */
public class Useranswer {
	private int id;
	private int qaid;
	private String answer;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQaid() {
		return qaid;
	}

	public void setQaid(int qaid) {
		this.qaid = qaid;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Useranswer(int id, int qaid, String answer) {
		super();
		this.id = id;
		this.qaid = qaid;
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "Useranswer [id=" + id + ", qaid=" + qaid + ", answer=" + answer
				+ "]";
	}

}
