package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Timeline;

public interface TimelineMapper {
	public abstract List<Timeline> myTimeline(String memberId);
}
