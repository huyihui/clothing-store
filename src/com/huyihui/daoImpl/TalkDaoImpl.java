package com.huyihui.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.huyihui.dao.TalkDao;
import com.huyihui.model.Talk;
@Repository("talkDaoImpl")
public class TalkDaoImpl implements TalkDao {

	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory sqlSessionFactory;
	
	
	
	@Override
	public List<Talk> findAll() {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<Talk> list=sqlSession.selectList("TalkNameSpace.findAll");
		sqlSession.close();
		return list;
		
	}



	@Override
	public int add(Talk talk) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.insert("TalkNameSpace.add", talk);
		sqlSession.close();
		return i;
	}



	@Override
	public int deldel(int talkid) {
		// TODO Auto-generated method stub
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int i=sqlSession.delete("TalkNameSpace.deldel", talkid);
		sqlSession.close();
		return i;
	}

}
