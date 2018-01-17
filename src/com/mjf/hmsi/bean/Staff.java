package com.mjf.hmsi.bean;

import java.sql.Timestamp;

/**
 * 员工类 Write by MaJianfei on 2017.11.25
 * @author MaJianfei
 *
 */
public class Staff {
	private int id;
	private String name;
	private String department;
	private String twoFourNineN;
	private String twoFourNineP;
	private String ip;
	private String inMail;
	private String outMail;
	private String mailPassword;
	private String startUpPassword;
	private String lockPassword;
	private boolean whetherYK;
	private String domainName;
	private Timestamp createUserT;
	private Timestamp recentlyAlterT;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getTwoFourNineN() {
		return twoFourNineN;
	}
	public void setTwoFourNineN(String twoFourNineN) {
		this.twoFourNineN = twoFourNineN;
	}
	public String getTwoFourNineP() {
		return twoFourNineP;
	}
	public void setTwoFourNineP(String twoFourNineP) {
		this.twoFourNineP = twoFourNineP;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getInMail() {
		return inMail;
	}
	public void setInMail(String inMail) {
		this.inMail = inMail;
	}
	public String getOutMail() {
		return outMail;
	}
	public void setOutMail(String outMail) {
		this.outMail = outMail;
	}
	public String getMailPassword() {
		return mailPassword;
	}
	public void setMailPassword(String mailPassword) {
		this.mailPassword = mailPassword;
	}
	public String getStartUpPassword() {
		return startUpPassword;
	}
	public void setStartUpPassword(String startUpPassword) {
		this.startUpPassword = startUpPassword;
	}
	public String getLockPassword() {
		return lockPassword;
	}
	public void setLockPassword(String lockPassword) {
		this.lockPassword = lockPassword;
	}
	public boolean isWhetherYK() {
		return whetherYK;
	}
	public void setWhetherYK(boolean whetherYK) {
		this.whetherYK = whetherYK;
	}
	public String getDomainName() {
		return domainName;
	}
	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}
	public Timestamp getCreateUserT() {
		return createUserT;
	}
	public void setCreateUserT(Timestamp createUserT) {
		this.createUserT = createUserT;
	}
	public Timestamp getRecentlyAlterT() {
		return recentlyAlterT;
	}
	public void setRecentlyAlterT(Timestamp recentlyAlterT) {
		this.recentlyAlterT = recentlyAlterT;
	}
	@Override
	public String toString() {
		return "Staff [id=" + id + ", name=" + name + ", department="
				+ department + ", twoFourNineN=" + twoFourNineN
				+ ", twoFourNineP=" + twoFourNineP + ", ip=" + ip + ", inMail="
				+ inMail + ", outMail=" + outMail + ", mailPassword="
				+ mailPassword + ", startUpPassword=" + startUpPassword
				+ ", lockPassword=" + lockPassword + ", whetherYK=" + whetherYK
				+ ", domainName=" + domainName + ", createUserT=" + createUserT
				+ ", recentlyAlterT=" + recentlyAlterT + "]";
	}
	
}
