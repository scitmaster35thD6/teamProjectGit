package global.sesoc.seworld.dao;

import global.sesoc.seworld.dto.Member;

public interface MemberMapper {
	/**
	 * 회원 ID로 검색해 회원정보를 조회한다.
	 * 
	 * @param memberId
	 * @return 하나의 Member 객체
	 */
	public abstract Member selectOneMember(String memberId);

	/**
	 * 회원가입
	 * 
	 * @param member
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertOneMember(Member member);

	/**
	 * 회원정보를 삭제한다.
	 * 
	 * @param member
	 * @return 0:삭제실패, 1:삭제성
	 */
	public abstract int deleteOneMember(Member member);

	/**
	 * 회원정보를 수정한다.
	 * 
	 * @param member
	 * @return 0:수정실패, 1:수정성공
	 */
	public abstract int updateOneMember(Member member);
}
