package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.AskFile;

public interface AskFileMapper {
	/**
	 * 문의게시글에 첨부된 모든 파일을 가져온다.
	 * 
	 * @param askId
	 * @return 문의하기ID로 조회한 모든 파일 리스트
	 */
	public abstract List<AskFile> viewAllAskFiles(String askId);

	/**
	 * 문의게시글에 사용자가 새로운 파일을 첨부한다.
	 * 
	 * @param askFile
	 * @return
	 */
	public abstract int insertAskFile(AskFile askFile);

	/**
	 * 문의게시글에 사용자가 첨부한 파일을 삭제한다.
	 * 
	 * @param askFile
	 * @return
	 */
	public abstract int deleteAskFile(AskFile askFile);

	/**
	 * 문의게시글에 사용자가 첨부한 파일을 수정한다.
	 * 
	 * @param askFile
	 * @return
	 */
	public abstract int updateAskFile(AskFile askFile);
}
