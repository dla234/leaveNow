package com.app.trip.gcode;

import java.sql.Timestamp;

public class GcodeDTO {
	private String gcode;
	private String gname;
	private String description;
	private String mainphoto;
	private String photoList;
	private String category;
	private String category_detail;
	private double g_score;
	private String detail_link;
	private String homepage;
	private String phone;
	private String address;
	private String roadaddress;
	private String mapx;
	private String mapy;
	private Timestamp g_rdade;
	private Timestamp g_rdate_update;
	private int distance;
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMainphoto() {
		return mainphoto;
	}
	public void setMainphoto(String mainphoto) {
		this.mainphoto = mainphoto;
	}
	public String getPhotoList() {
		return photoList;
	}
	public void setPhotoList(String photoList) {
		this.photoList = photoList;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCategory_detail() {
		return category_detail;
	}
	public void setCategory_detail(String category_detail) {
		this.category_detail = category_detail;
	}
	public double getG_score() {
		return g_score;
	}
	public void setG_score(double g_score) {
		this.g_score = g_score;
	}
	public String getDetail_link() {
		return detail_link;
	}
	public void setDetail_link(String detail_link) {
		this.detail_link = detail_link;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRoadaddress() {
		return roadaddress;
	}
	public void setRoadaddress(String roadaddress) {
		this.roadaddress = roadaddress;
	}
	public String getMapx() {
		return mapx;
	}
	public void setMapx(String mapx) {
		this.mapx = mapx;
	}
	public String getMapy() {
		return mapy;
	}
	public void setMapy(String mapy) {
		this.mapy = mapy;
	}
	public Timestamp getG_rdade() {
		return g_rdade;
	}
	public void setG_rdade(Timestamp g_rdade) {
		this.g_rdade = g_rdade;
	}
	public Timestamp getG_rdate_update() {
		return g_rdate_update;
	}
	public void setG_rdate_update(Timestamp g_rdate_update) {
		this.g_rdate_update = g_rdate_update;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	@Override
	public String toString() {
		return "GcodeDTO [gcode=" + gcode + ", gname=" + gname + ", description=" + description + ", mainphoto="
				+ mainphoto + ", photoList=" + photoList + ", category=" + category + ", category_detail="
				+ category_detail + ", g_score=" + g_score + ", detail_link=" + detail_link + ", homepage=" + homepage
				+ ", phone=" + phone + ", address=" + address + ", roadaddress=" + roadaddress + ", mapx=" + mapx
				+ ", mapy=" + mapy + ", g_rdade=" + g_rdade + ", g_rdate_update=" + g_rdate_update + ", distance="
				+ distance + "]";
	}
	
}
