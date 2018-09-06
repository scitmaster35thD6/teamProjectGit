package global.sesoc.seworld.dto;

public class ExhibitionDetail {
	public String exhibitionId;
	public String memberId;
	public String wishing;
	public String rating;
	public String comment;
	public ExhibitionDetail() {
		super();
	}
	public ExhibitionDetail(String exhibitionId, String memberId, String wishing, String rating, String comment) {
		super();
		this.exhibitionId = exhibitionId;
		this.memberId = memberId;
		this.wishing = wishing;
		this.rating = rating;
		this.comment = comment;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "ExhibitionDetail [exhibitionId=" + exhibitionId + ", memberId=" + memberId + ", wishing=" + wishing
				+ ", rating=" + rating + ", comment=" + comment + "]";
	}
}
