package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.AskReply;

public interface AskReplyMapper {
	/**
	 * 한 문의게시글에 대한 모든 댓글을 가져온다.
	 * 
	 * @param askId
	 * @return 문의게시글 ID로 조회한 모든 댓글 리스트
	 */
	public abstract List<AskReply> selectAllAskReplies(String askId);

	/**
	 * 문의게시글 댓글 ID로 검색해 하나의 댓글을 조회한다.
	 * 
	 * @param askReplyId
	 * @return 하나의 AskReply 객체
	 */
	public abstract AskReply selectOneAskReply(String askReplyId);

	/**
	 * 문의게시글에 사용자가 새로운 댓글을 입력한다.
	 * 
	 * @param askReply
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertOneAskReply(AskReply askReply);

	/**
	 * 문의게시글에 사용자가 입력한 댓글을 삭제한다.
	 * 
	 * @param askReply
	 * @return 0:삭제실패 1:삭제성공
	 */
	public abstract int deleteOneAskReply(AskReply askReply);

	/**
	 * 문의게시글에 사용자가 입력한 댓글을 수정한다.
	 * 
	 * @param askReply
	 * @return 0:수정실패 1:수정성공
	 */
	public abstract int updateOneAskReply(AskReply askReply);
}
