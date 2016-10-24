package com.huyihui.dao;

import java.util.List;

import com.huyihui.model.Talk;

public interface TalkDao {

	List<Talk> findAll();

	int add(Talk talk);

	int deldel(int talkid);

}
