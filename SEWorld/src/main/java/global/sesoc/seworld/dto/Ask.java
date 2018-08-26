package global.sesoc.seworld.dto;

public class Ask {
	private String askId;
	private String memberId;
	private String exhibitionId;
	private String title;
	private String content;
	private String createdDate;
	private String updatedDate;
	public Ask() {
		super();
	}
	public Ask(String askId, String memberId, String exhibitionId, String title, String content, String createdDate,
			String updatedDate) {
		super();
		this.askId = askId;
		this.memberId = memberId;
		this.exhibitionId = exhibitionId;
		this.title = title;
		this.content = content;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
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
	public String getExhibitionId() {
		return exhibitionId;
	}
	public void setExhibitionId(String exhibitionId) {
		this.exhibitionId = exhibitionId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
		return "Ask [askId=" + askId + ", memberId=" + memberId + ", exhibitionId=" + exhibitionId + ", title=" + title
				+ ", content=" + content + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + "]";
	}
}
