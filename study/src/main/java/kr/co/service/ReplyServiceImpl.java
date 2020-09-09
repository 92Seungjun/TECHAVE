package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.ReplyDAO;
import kr.co.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;

	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.writeReply(vo);

	}

	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteReplay(vo);

	}

	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectReply(rno);
	}
}
