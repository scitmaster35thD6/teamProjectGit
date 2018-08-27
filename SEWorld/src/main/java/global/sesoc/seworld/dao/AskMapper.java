package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Ask;

public interface AskMapper {
	/**
	 * 접속한 회원이 등록한 모든 문의를 조회한다.
	 * 
	 * @param memberId
	 * @return 회원 ID로 조회한 모든 문의하기 리스트
	 */
	public abstract List<Ask> selectAllAsksFromMember(String memberId);

	/**
	 * 한 전시정보에 대한 모든 문의를 조회한다.
	 * 
	 * @param exhibitionId
	 * @return 전시정보 ID로 조회한 모든 문의하기 리스트
	 */
	public abstract List<Ask> selectAllAsksFromExhibition(String exhibitionId);

	/**
	 * 사용자 ID와 전시정보 ID로 검색해서 본인 및 타인의 문의를 조회한다.
	 * 
	 * @param askId
	 * @return 하나의 Ask 객체
	 */
	public abstract Ask selectOneAsk(String askId);

	/**
	 * 사용자가 새로운 문의를 입력한다.
	 * 
	 * @param ask
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertOneAsk(Ask ask);

	/**
	 * 사용자가 입력한 문의를 삭제한다.
	 * 
	 * @param ask
	 * @return 0:삭제실패, 1:삭제성공
	 */
	public abstract int deleteOneAsk(Ask ask);

	/**
	 * 사용자가 입력한 문의를 수정한다.
	 * 
	 * @param ask
	 * @return 0:수정실패, 1:수정성공
	 */
	public abstract int updateOneAsk(Ask ask);
}
