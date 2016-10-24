package com.huyihui.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.huyihui.dao.TalkDao;
import com.huyihui.model.Talk;
import com.huyihui.service.TalkService;
@Service("talkServiceImpl")
public class TalkServiceImpl implements TalkService {

	@Resource(name="talkDaoImpl")
	private TalkDao talkDaoImpl;
	
	
	@Override
	public List<Talk> findAll() {
		// TODO Auto-generated method stub
		return talkDaoImpl.findAll();
	}


	@Override
	public int add(Talk talk) {
		// TODO Auto-generated method stub
		return talkDaoImpl.add(talk);
	}


	@Override
	public int deldel(int talkid) {
		// TODO Auto-generated method stub
		return talkDaoImpl.deldel(talkid);
	}

}
