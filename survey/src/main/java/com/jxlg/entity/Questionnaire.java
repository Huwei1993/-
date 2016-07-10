package com.jxlg.entity;

import java.util.Date;
/**
 * 问卷实体类
 * @author feng
 *
 */
public class Questionnaire {
	private int qid; // 调查表id
	private String qname; // 调查表名字
	private int uid; // 编辑用户id
	private Date etime; // 编辑时间
	private Date stime; // 开始时间
	private Date ftime; // 结束时间
	private String explain; // 问卷说明
	private int mid; // 模板类型id

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getQname() {
		return qname;
	}

	public void setQname(String qname) {
		this.qname = qname;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Date getEtime() {
		return etime;
	}

	public void setEtime(Date etime) {
		this.etime = etime;
	}

	public Date getStime() {
		return stime;
	}

	public void setStime(Date stime) {
		this.stime = stime;
	}

	public Date getFtime() {
		return ftime;
	}

	public void setFtime(Date ftime) {
		this.ftime = ftime;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Questionnaire(int qid, String qname, int uid, Date etime,
			Date stime, Date ftime, String explain, int mid) {
		super();
		this.qid = qid;
		this.qname = qname;
		this.uid = uid;
		this.etime = etime;
		this.stime = stime;
		this.ftime = ftime;
		this.explain = explain;
		this.mid = mid;
	}

	public Questionnaire() {
		super();
	}

	@Override
	public String toString() {
		return "Questionnaire [qid=" + qid + ", qname=" + qname + ", uid="
				+ uid + ", etime=" + etime + ", stime=" + stime + ", ftime="
				+ ftime + ", explain=" + explain + ", mid=" + mid + "]";
	}

}
