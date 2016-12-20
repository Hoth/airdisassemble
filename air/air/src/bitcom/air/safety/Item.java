package bitcom.air.safety;

public class Item {
	public String content;
	public String countryEnName;
	public String countryName;
	public String id;
	public String title;
	public String wrtDt;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWrtDt() {
		return wrtDt;
	}
	public void setWrtDt(String wrtDt) {
		this.wrtDt = wrtDt;
	}
	@Override
	public String toString() {
		return "Item [content=" + content + ", countryEnName=" + countryEnName
				+ ", countryName=" + countryName + ", id=" + id + ", title="
				+ title + ", wrtDt=" + wrtDt + "]";
	}
	
	

}
