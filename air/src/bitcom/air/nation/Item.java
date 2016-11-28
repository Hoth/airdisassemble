package bitcom.air.nation;

public class Item {
	public String basic;
	public String continent;
	public String countryEnName;
	public String countryName;
	public String id;
	public String imgUrl;
	public String wrtDt;
	
	public String getBasic() {
		return basic;
	}
	public void setBasic(String basic) {
		this.basic = basic;
	}
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public String getCountryEnName() {
		return countryEnName;
	}
	public void setCountryEnName(String countryEnName) {
		this.countryEnName = countryEnName;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getWrtDt() {
		return wrtDt;
	}
	public void setWrtDt(String wrtDt) {
		this.wrtDt = wrtDt;
	}
	
	@Override
	public String toString() {
		return "Item [basic=" + basic + ", continent=" + continent
				+ ", countryEnName=" + countryEnName + ", countryName="
				+ countryName + ", id=" + id + ", imgUrl=" + imgUrl
				+ ", wrtDt=" + wrtDt + "]";
	}
	

}
