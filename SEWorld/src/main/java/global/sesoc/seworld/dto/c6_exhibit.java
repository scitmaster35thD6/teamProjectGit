package global.sesoc.seworld.dto;

public class c6_exhibit {
	private String exhibit_id;
	private String title_kor;
	private String title_eng;
	private String day_opened;
	private String day_closed;
	private String category_name;
	private String opening_region;
	private String opening_country;
	private String opening_city;
	private String exhibit_hall;
	private String sponsor;
	private String source;
	private String created_date;
	private String updated_date;

	public c6_exhibit() {
		super();
	}

	public String getExhibit_id() {
		return exhibit_id;
	}

	public void setExhibit_id(String exhibit_id) {
		this.exhibit_id = exhibit_id;
	}

	public String getTitle_kor() {
		return title_kor;
	}

	public void setTitle_kor(String title_kor) {
		this.title_kor = title_kor;
	}

	public String getTitle_eng() {
		return title_eng;
	}

	public void setTitle_eng(String title_eng) {
		this.title_eng = title_eng;
	}

	public String getDay_opened() {
		return day_opened;
	}

	public void setDay_opened(String day_opened) {
		this.day_opened = day_opened;
	}

	public String getDay_closed() {
		return day_closed;
	}

	public void setDay_closed(String day_closed) {
		this.day_closed = day_closed;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getOpening_region() {
		return opening_region;
	}

	public void setOpening_region(String opening_region) {
		this.opening_region = opening_region;
	}

	public String getOpening_country() {
		return opening_country;
	}

	public void setOpening_country(String opening_country) {
		this.opening_country = opening_country;
	}

	public String getOpening_city() {
		return opening_city;
	}

	public void setOpening_city(String opening_city) {
		this.opening_city = opening_city;
	}

	public String getExhibit_hall() {
		return exhibit_hall;
	}

	public void setExhibit_hall(String exhibit_hall) {
		this.exhibit_hall = exhibit_hall;
	}

	public String getSponsor() {
		return sponsor;
	}

	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getCreated_date() {
		return created_date;
	}

	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}

	public String getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(String updated_date) {
		this.updated_date = updated_date;
	}

	@Override
	public String toString() {
		return "c6_exhibit [exhibit_id=" + exhibit_id + ", title_kor=" + title_kor + ", title_eng=" + title_eng
				+ ", day_opened=" + day_opened + ", day_closed=" + day_closed + ", category_name=" + category_name
				+ ", opening_region=" + opening_region + ", opening_country=" + opening_country + ", opening_city="
				+ opening_city + ", exhibit_hall=" + exhibit_hall + ", sponsor=" + sponsor + ", source=" + source
				+ ", created_date=" + created_date + ", updated_date=" + updated_date + "]";
	}

}
