package bitcom.air.accident;

public class Item {
	public String continent;
	public String ename;
	public String id;
	public String imgUrl;
	public String name;
	public String news;
	public String wrtDt;
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNews() {
		return news;
	}
	public void setNews(String news) {
		this.news = news;
	}
	public String getWrtDt() {
		return wrtDt;
	}
	public void setWrtDt(String wrtDt) {
		this.wrtDt = wrtDt;
	}
	@Override
	public String toString() {
		return "Item [continent=" + continent + ", ename=" + ename + ", id=" + id + ", imgUrl=" + imgUrl + ", name="
				+ name + ", news=" + news + ", wrtDt=" + wrtDt + "]";
	}
	
	

}
