package global.sesoc.seworld.dao;

import global.sesoc.seworld.dto.Wishing;

public interface WishingMapper {
	/**
	 * 사용자가 가고 싶어하는 전시정보를 입력한다.
	 * 
	 * @param wishing
	 * @return 0:입력실패, 1:입력성공
	 */
	public abstract int insertOneWishing(Wishing wishing);

	/**
	 * 사용자가 가고 싶어했던 전시정보를 삭제한다.
	 * 
	 * @param wishing
	 * @return 0:삭제실패, 1:삭제성공
	 */
	public abstract int deleteOneWishing(Wishing wishing);
}
