package global.sesoc.seworld.dto;

public class ExhibitionDetail {
	public String exhibitionId;
	public String memberId;
	public String wishing;
	public String rating;
	public String content;
	public ExhibitionDetail() {
		super();
	}
	public ExhibitionDetail(String exhibitionId, String memberId, String wishing, String rating, String content) {
		super();
		this.exhibitionId = exhibitionId;
		this.memberId = memberId;
		this.wishing = wishing;
		this.rating = rating;
		this.content = content;
	}
	public String getExhibitionId() {
		return exhibitionId;
	}
	public void setExhibitionId(String exhibitionId) {
		this.exhibitionId = exhibitionId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getWishing() {
		return wishing;
	}
	public void setWishing(String wishing) {
		this.wishing = wishing;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ExhibitionDetail [exhibitionId=" + exhibitionId + ", memberId=" + memberId + ", wishing=" + wishing
				+ ", rating=" + rating + ", content=" + content + "]";
	}
}
