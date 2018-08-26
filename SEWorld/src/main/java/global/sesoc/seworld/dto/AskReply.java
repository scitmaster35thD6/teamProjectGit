package global.sesoc.seworld.dto;

public class AskReply {
	private String askReplyId;
	private String askId;
	private String memberId;
	private String content;
	private String createdDate;
	private String updatedDate;
	public AskReply() {
		super();
	}
	public AskReply(String askReplyId, String askId, String memberId, String content, String createdDate,
			String updatedDate) {
		super();
		this.askReplyId = askReplyId;
		this.askId = askId;
		this.memberId = memberId;
		this.content = content;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}
	public String getAskReplyId() {
		return askReplyId;
	}
	public void setAskReplyId(String askReplyId) {
		this.askReplyId = askReplyId;
	}
	public String getAskId() {
		return askId;
	}
	public void setAskId(String askId) {
		this.askId = askId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
	@Override
	public String toString() {
		return "AskReply [askReplyId=" + askReplyId + ", askId=" + askId + ", memberId=" + memberId + ", content="
				+ content + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + "]";
	}
}
