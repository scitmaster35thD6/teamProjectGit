package global.sesoc.seworld.dao;

import global.sesoc.seworld.dto.Participating;

public interface ParticipatingMapper {
	/**
	 * 사용자의 전시회 참여정보를 입력한다.
	 * 
	 * @param participating
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertParticipating(Participating participating);

	/**
	 * 사용자의 전시회 참여정보를 삭제한다.
	 * 
	 * @param participating
	 * @return 0:삭제실패, 1:삭제성공
	 */
	public abstract int deleteParticipating(Participating participating);
}
