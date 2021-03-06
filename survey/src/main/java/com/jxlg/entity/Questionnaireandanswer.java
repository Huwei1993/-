package com.jxlg.entity;

/**
 * 问卷表-问题关系实体类
 * @author feng
 *
 */
public class Questionnaireandanswer {
	private int qaid;// 问卷调查表id
	private int pid;// 调查表id
	private int qid;// 问题id

	public int getQaid() {
		return qaid;
	}

	public void setQaid(int qaid) {
		this.qaid = qaid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public Questionnaireandanswer(int qaid, int pid, int qid) {
		super();
		this.qaid = qaid;
		this.pid = pid;
		this.qid = qid;
	}

	public Questionnaireandanswer() {
		super();
	}

	@Override
	public String toString() {
		return "Questionnaireandanswer [qaid=" + qaid + ", pid=" + pid
				+ ", qid=" + qid + "]";
	}

}
