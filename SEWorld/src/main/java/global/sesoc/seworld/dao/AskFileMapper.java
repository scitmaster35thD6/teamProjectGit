package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.AskFile;

public interface AskFileMapper {
	/**
	 * 문의게시글에 첨부된 모든 파일을 가져온다.
	 * 
	 * @param askId
	 * @return 문의하기 ID로 조회한 모든 파일 리스트
	 */
	public abstract List<AskFile> selectAllAskFiles(String askId);

	/**
	 * 문의게시글 첨부파일 ID로 검색해 하나의 파일을 조회한다.
	 * 
	 * @param askFileId
	 * @return 하나의 AskFile 객체
	 */
	public abstract AskFile selectOneAskFile(String askFileId);

	/**
	 * 문의게시글에 사용자가 새로운 파일을 첨부한다.
	 * 
	 * @param askFile
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertOneAskFile(AskFile askFile);

	/**
	 * 문의게시글 첨부파일 ID로 검색해 사용자가 첨부한 파일을 삭제한다.
	 * 
	 * @param askFileId
	 * @return 0:삭제실패, 1:삭제성공
	 */
	public abstract int deleteOneAskFile(String askFileId);

	/**
	 * 문의게시글에 사용자가 첨부한 파일을 수정한다.
	 * 
	 * @param askFile
	 * @return 0:수정실패, 1:수정성공
	 */
	public abstract int updateOneAskFile(AskFile askFile);
}
