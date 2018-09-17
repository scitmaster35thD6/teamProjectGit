package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Calendar;

@Repository
public class CalendarRepository {
	@Autowired
	SqlSession sqlSession;

	public Calendar selectOneCalendar(Calendar calendar) {
		CalendarMapper calendarMapper = sqlSession.getMapper(CalendarMapper.class);
		return calendarMapper.selectOneCalendar(calendar);
	}

	public int insertCalendar(Calendar calendar) {
		CalendarMapper calendarMapper = sqlSession.getMapper(CalendarMapper.class);
		return calendarMapper.insertCalendar(calendar);
	}

	public int deleteCalendar(String calendarId) {
		CalendarMapper calendarMapper = sqlSession.getMapper(CalendarMapper.class);
		return calendarMapper.deleteCalendar(calendarId);
	}

	public int updateCalendar(String calendarId) {
		CalendarMapper calendarMapper = sqlSession.getMapper(CalendarMapper.class);
		return calendarMapper.updateCalendar(calendarId);
	}

	public List<Calendar> selectAllCalendars(String memberId) {
		CalendarMapper calendarMapper = sqlSession.getMapper(CalendarMapper.class);
		return calendarMapper.selectAllCalendars(memberId);
	}

}
