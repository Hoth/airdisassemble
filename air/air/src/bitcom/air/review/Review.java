package bitcom.air.review;

public class Review {
	
	int r_Num;
	String r_Name;
	String r_Age;
	String r_Location;
	String r_Continent;
	String r_Title;
	String r_Wdate;
	String r_Star;
	String r_Gender;
	String r_Image;
	String r_Context;
	String r_Season;
	public int getR_Num() {
		return r_Num;
	}
	public void setR_Num(int r_Num) {
		this.r_Num = r_Num;
	}
	public String getR_Name() {
		return r_Name;
	}
	public void setR_Name(String r_Name) {
		this.r_Name = r_Name;
	}
	public String getR_Location() {
		return r_Location;
	}
	public void setR_Location(String r_Location) {
		this.r_Location = r_Location;
	}
	public String getR_Continent() {
		return r_Continent;
	}
	public void setR_Continent(String r_Continent) {
		this.r_Continent = r_Continent;
	}
	public String getR_Season() {
		return r_Season;
	}
	public void setR_Season(String r_Season) {
		this.r_Season = r_Season;
	}
	public String getR_Title() {
		return r_Title;
	}
	public void setR_Title(String r_Title) {
		this.r_Title = r_Title;
	}
	public String getR_Wdate() {
		return r_Wdate;
	}
	public void setR_Wdate(String r_Wdate) {
		this.r_Wdate = r_Wdate;
	}
	public String getR_Star() {
		return r_Star;
	}
	public void setR_Star(String r_Star) {
		this.r_Star = r_Star;
	}
	public String getR_Gender() {
		return r_Gender;
	}
	public void setR_Gender(String r_Gender) {
		this.r_Gender = r_Gender;
	}
	public String getR_Image() {
		return r_Image;
	}
	public void setR_Image(String r_Image) {
		this.r_Image = r_Image;
	}
	public String getR_Context() {
		return r_Context;
	}
	public void setR_Context(String r_Context) {
		this.r_Context = r_Context;
	}
	public String getR_Age() {
		return r_Age;
	}
	public void setR_Age(String r_Age) {
		this.r_Age = r_Age;
	}
	@Override
	public String toString() {
		return "Review [r_Num=" + r_Num + ", r_Name=" + r_Name + ", r_Age="
				+ r_Age + ", c_Location=" + r_Location + ", c_Continent="
				+ r_Continent + ", r_Title=" + r_Title + ", r_Wdate=" + r_Wdate
				+ ", r_Star=" + r_Star + ", r_Gender=" + r_Gender
				+ ", r_Image=" + r_Image + ", r_Context=" + r_Context
				+ ", r_Season=" + r_Season + "]";
	}
		
}
