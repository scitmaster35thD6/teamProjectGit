package global.sesoc.seworld.dto;

public class c6_exhibit {
	private String exhibit_id;
	private String exhibition_title_kor;
	private String exhibition_title_eng;
	private String opening_term;
	private int first_opening_year;
	private String opening_country;
	private String opening_city;
	private String exhibition_hall;
	private String sponsor;
	private String created_date;
	private String updated_date;
	private String data_offer;

	public c6_exhibit() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getExhibit_id() {
		return exhibit_id;
	}

	public void setExhibit_id(String exhibit_id) {
		this.exhibit_id = exhibit_id;
	}

	public String getExhibition_title_kor() {
		return exhibition_title_kor;
	}

	public void setExhibition_title_kor(String exhibition_title_kor) {
		this.exhibition_title_kor = exhibition_title_kor;
	}

	public String getExhibition_title_eng() {
		return exhibition_title_eng;
	}

	public void setExhibition_title_eng(String exhibition_title_eng) {
		this.exhibition_title_eng = exhibition_title_eng;
	}

	public String getOpening_term() {
		return opening_term;
	}

	public void setOpening_term(String opening_term) {
		this.opening_term = opening_term;
	}

	public int getFirst_opening_year() {
		return first_opening_year;
	}

	public void setFirst_opening_year(int first_opening_year) {
		this.first_opening_year = first_opening_year;
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

	public String getExhibition_hall() {
		return exhibition_hall;
	}

	public void setExhibition_hall(String exhibition_hall) {
		this.exhibition_hall = exhibition_hall;
	}

	public String getSponsor() {
		return sponsor;
	}

	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
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

	public String getData_offer() {
		return data_offer;
	}

	public void setData_offer(String data_offer) {
		this.data_offer = data_offer;
	}

	@Override
	public String toString() {
		return "c6_exhibit [exhibit_id=" + exhibit_id + ", exhibition_title_kor=" + exhibition_title_kor
				+ ", exhibition_title_eng=" + exhibition_title_eng + ", opening_term=" + opening_term
				+ ", first_opening_year=" + first_opening_year + ", opening_country=" + opening_country
				+ ", opening_city=" + opening_city + ", exhibition_hall=" + exhibition_hall + ", sponsor=" + sponsor
				+ ", created_date=" + created_date + ", updated_date=" + updated_date + ", data_offer=" + data_offer
				+ "]";
	}

}
