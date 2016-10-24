package com.huyihui.model;

public class Talk {
private String talkusername;
private String talkneirong;
private Integer talkid;
public String getTalkusername() {
	return talkusername;
}
public void setTalkusername(String talkusername) {
	this.talkusername = talkusername;
}
public String getTalkneirong() {
	return talkneirong;
}
public void setTalkneirong(String talkneirong) {
	this.talkneirong = talkneirong;
}
public Integer getTalkid() {
	return talkid;
}
public void setTalkid(Integer talkid) {
	this.talkid = talkid;
}

public Talk(String talkusername, String talkneirong, Integer talkid) {
	super();
	this.talkusername = talkusername;
	this.talkneirong = talkneirong;
	this.talkid = talkid;
}

public Talk() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Talk [talkusername=" + talkusername + ", talkneirong=" + talkneirong + ", talkid=" + talkid + "]";
}

}
