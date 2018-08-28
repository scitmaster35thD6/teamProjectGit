package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Comment;

public interface CommentMapper {
	/**
	 * 접속한 회원이 등록한 모든 코멘트를 조회한다.
	 * 
	 * @param memberId
	 * @return 회원 ID로 조회한 모든 코멘트의 리스트
	 */
	public abstract List<Comment> selectAllCommentsFromMember(String memberId);

	/**
	 * 한 전시정보에 대한 모든 코멘트를 조회한다.
	 * 
	 * @param exhibitionId
	 * @return 전시정보 ID로 조회한 모든 코멘트의 리스트
	 */
	public abstract List<Comment> selectAllCommentsFromExhibition(String exhibitionId);

	/**
	 * 회원 ID와 전시정보 ID로 검색해서 본인 및 타인의 코멘트를 조회한다.
	 * 
	 * @param comment
	 * @return 하나의 Comment 객체
	 */
	public abstract Comment selectOneComment(Comment comment);

	/**
	 * 사용자가 새로운 코멘트를 입력한다.
	 * 
	 * @param comment
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertOneComment(Comment comment);

	/**
	 * 사용자가 입력한 코멘트를 삭제한다.
	 * 
	 * @param comment
	 * @return 0:삭제실패, 1:삭제성공
	 */
	public abstract int deleteOneComment(Comment comment);

	/**
	 * 사용자가 입력한 코멘트를 수정한다.
	 * 
	 * @param comment
	 * @return 0:수정실패, 1:수정성공
	 */
	public abstract int updateOneComment(Comment comment);
}