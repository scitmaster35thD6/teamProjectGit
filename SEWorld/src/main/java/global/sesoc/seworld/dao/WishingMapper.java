package global.sesoc.seworld.dao;

import global.sesoc.seworld.dto.Wishing;

public interface WishingMapper {
	public abstract Wishing selectOneWishing(Wishing wishing);

	public abstract int insertOneWishing(Wishing wishing);

	public abstract int updateWishingDeleted(Wishing wishing);

	public abstract int updateWishingInserted(Wishing wishing);
}
