package global.sesoc.seworld.dto;

public class c6_regions {
	private int region_id;
	private String region_name;

	public c6_regions() {
		super();
	}

	public int getRegion_id() {
		return region_id;
	}

	public void setRegion_id(int region_id) {
		this.region_id = region_id;
	}

	public String getRegion_name() {
		return region_name;
	}

	public void setRegion_name(String region_name) {
		this.region_name = region_name;
	}

	@Override
	public String toString() {
		return "c6_regions [region_id=" + region_id + ", region_name=" + region_name + "]";
	}

}
