package com.app.trip.local;

public class LocalDTO {
	private String id;
	private String place_name;
	private String introduction;
	private String mainphotourl;
	private String photoList;
	private String category_group_code;
	private String category_name;
	private String place_url;
	private String homepage;
	private String phone;
	private String address_name;
	private String road_address_name;
	private String x;
	private String y;
	private int distance;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPlace_name() {
		return place_name;
	}
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getMainphotourl() {
		return mainphotourl;
	}
	public void setMainphotourl(String mainphotourl) {
		this.mainphotourl = mainphotourl;
	}
	public String getPhotoList() {
		return photoList;
	}
	public void setPhotoList(String photoList) {
		this.photoList = photoList;
	}
	public String getCategory_group_code() {
		return category_group_code;
	}
	public void setCategory_group_code(String category_group_code) {
		this.category_group_code = category_group_code;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getPlace_url() {
		return place_url;
	}
	public void setPlace_url(String place_url) {
		this.place_url = place_url;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getRoad_address_name() {
		return road_address_name;
	}
	public void setRoad_address_name(String road_address_name) {
		this.road_address_name = road_address_name;
	}
	public String getX() {
		return x;
	}
	public void setX(String x) {
		this.x = x;
	}
	public String getY() {
		return y;
	}
	public void setY(String y) {
		this.y = y;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	@Override
	public String toString() {
		return "LocalDTO [id=" + id + ", place_name=" + place_name + ", introduction=" + introduction
				+ ", mainphotourl=" + mainphotourl + ", photoList=" + photoList + ", category_group_code="
				+ category_group_code + ", category_name=" + category_name + ", place_url=" + place_url + ", homepage="
				+ homepage + ", phone=" + phone + ", address_name=" + address_name + ", road_address_name="
				+ road_address_name + ", x=" + x + ", y=" + y + ", distance=" + distance + "]";
	}
	
}
