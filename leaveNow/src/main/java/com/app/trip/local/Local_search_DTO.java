package com.app.trip.local;

public class Local_search_DTO {
	private String query="";
	private String category_group_code="";
	private String x="";
	private String y="";
	private String radius="";
	private String page="";
	public String getQuery() {
		return query;
	}
	public void setQuery(String query) {
		this.query = query;
	}
	public String getCategory_group_code() {
		return category_group_code;
	}
	public void setCategory_group_code(String category_group_code) {
		this.category_group_code = category_group_code;
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
	public String getRadius() {
		return radius;
	}
	public void setRadius(String radius) {
		this.radius = radius;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "Local_search_DTO [query=" + query + ", category_group_code=" + category_group_code + ", x=" + x + ", y="
				+ y + ", radius=" + radius + ", page=" + page + "]";
	}
	
	
}
