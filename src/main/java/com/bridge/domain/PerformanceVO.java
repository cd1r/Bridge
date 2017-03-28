package com.bridge.domain;

public class PerformanceVO {

	int id;
	String hall_id;
	String name;
	String director;
	String characters;
	String term_from;
	String term_to;
	double rate;
	String main_img_dir;
	String desc_img_dir;
	String video_url;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHall_id() {
		return hall_id;
	}
	public void setHall_id(String hall_id) {
		this.hall_id = hall_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getCharacters() {
		return characters;
	}
	public void setCharacters(String characters) {
		this.characters = characters;
	}
	public String getTerm_from() {
		return term_from;
	}
	public void setTerm_from(String term_from) {
		this.term_from = term_from;
	}
	public String getTerm_to() {
		return term_to;
	}
	public void setTerm_to(String term_to) {
		this.term_to = term_to;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public String getMain_img_dir() {
		return main_img_dir;
	}
	public void setMain_img_dir(String main_img_dir) {
		this.main_img_dir = main_img_dir;
	}
	public String getDesc_img_dir() {
		return desc_img_dir;
	}
	public void setDesc_img_dir(String desc_img_dir) {
		this.desc_img_dir = desc_img_dir;
	}
	public String getVideo_url() {
		return video_url;
	}
	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}
}
