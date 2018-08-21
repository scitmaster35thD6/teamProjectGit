package global.sesoc.seworld.dto;

public class c6_participating {
	private String member_id;
	private String exhibit_id;
	private String create_date;

	public c6_participating() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getExhibit_id() {
		return exhibit_id;
	}

	public void setExhibit_id(String exhibit_id) {
		this.exhibit_id = exhibit_id;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	@Override
	public String toString() {
		return "c6_participating [member_id=" + member_id + ", exhibit_id=" + exhibit_id + ", create_date="
				+ create_date + "]";
	}

}
