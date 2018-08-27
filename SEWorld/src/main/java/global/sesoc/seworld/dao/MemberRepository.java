package global.sesoc.seworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Member;

@Repository
public class MemberRepository {
	@Autowired
	SqlSession sqlSession;

	public Member selectOneMember(String memberId) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.selectOneMember(memberId);
	}

	public int insertOneMember(Member member) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.insertOneMember(member);
	}

	public int deleteOneMember(Member member) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.deleteOneMember(member);
	}

	public int updateOneMember(Member member) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.updateOneMember(member);
	}
}
