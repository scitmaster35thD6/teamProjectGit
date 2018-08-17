package global.sesoc.seworld.dto;

public class c6_cities {
	private int city_id;
	private String city_name;
	private String country_id;

	public c6_cities() {
		super();
	}

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getCountry_id() {
		return country_id;
	}

	public void setCountry_id(String country_id) {
		this.country_id = country_id;
	}

	@Override
	public String toString() {
		return "c6_cities [city_id=" + city_id + ", city_name=" + city_name + ", country_id=" + country_id + "]";
	}

}
