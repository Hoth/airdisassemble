package bitcom.air.review;

public class Review {
	
	int r_Num;
	String r_Name;
	String c_Location;
	String r_Title;
	String r_Wdate;
	String r_Star;
	String r_Gender;
	String r_Image;
	String r_Context;
	String r_Tdate;
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
	public String getC_Location() {
		return c_Location;
	}
	public void setC_Location(String c_Location) {
		this.c_Location = c_Location;
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
	public String getR_Tdate() {
		return r_Tdate;
	}
	public void setR_Tdate(String r_Tdate) {
		this.r_Tdate = r_Tdate;
	}
	@Override
	public String toString() {
		return "Review [r_Num=" + r_Num + ", r_Name=" + r_Name + ", c_Location=" + c_Location + ", r_Title=" + r_Title
				+ ", r_Wdate=" + r_Wdate + ", r_Star=" + r_Star + ", r_Gender=" + r_Gender + ", r_Image=" + r_Image
				+ ", r_Context=" + r_Context + ", r_Tdate=" + r_Tdate + "]";
	}
	
	
}
