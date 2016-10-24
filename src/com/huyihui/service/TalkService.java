package com.huyihui.service;

import java.util.List;

import com.huyihui.model.Talk;

public interface TalkService {

	List<Talk> findAll();

	int add(Talk talk);

	int deldel(int talkid);

}
