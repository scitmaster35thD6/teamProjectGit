package global.sesoc.seworld.dto;

public class Member {
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberBirth;
	private String memberEmail;
	private String memberPhone;
	private String regDate;
	public Member() {
		super();
	}
	public Member(String memberId, String memberPwd, String memberName, String memberBirth, String memberEmail,
			String memberPhone, String regDate) {
		super();
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.regDate = regDate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberPwd=" + memberPwd + ", memberName=" + memberName
				+ ", memberBirth=" + memberBirth + ", memberEmail=" + memberEmail + ", memberPhone=" + memberPhone
				+ ", regDate=" + regDate + "]";
	}
}
