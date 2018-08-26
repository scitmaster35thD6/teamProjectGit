package global.sesoc.seworld.dto;

public class Comment {
	private String memberId;
	private String exhibitionId;
	private double rating;
	private String content;
	private String createdDate;
	private String updatedDate;
	public Comment() {
		super();
	}
	public Comment(String memberId, String exhibitionId, double rating, String content, String createdDate,
			String updatedDate) {
		super();
		this.memberId = memberId;
		this.exhibitionId = exhibitionId;
		this.rating = rating;
		this.content = content;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
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
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
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
		return "Comment [memberId=" + memberId + ", exhibitionId=" + exhibitionId + ", rating=" + rating + ", content="
				+ content + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + "]";
	}
}
