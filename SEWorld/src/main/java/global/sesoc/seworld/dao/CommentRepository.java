package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.seworld.dto.Comment;

@Repository
public class CommentRepository {
	@Autowired
	SqlSession sqlSession;

	public List<Comment> selectAllCommentsFromMember(String memberId) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.selectAllCommentsFromMember(memberId);
	}

	public List<Comment> selectAllCommentsFromExhibition(String exhibitionId) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.selectAllCommentsFromExhibition(exhibitionId);
	}

	public Comment selectOneComment(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.selectOneComment(comment);
	}

	public int insertComment(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.insertComment(comment);
	}

	public int updateRatingDeleted(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.updateRatingDeleted(comment);
	}

	public int updateCommentDeleted(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.updateCommentDeleted(comment);
	}

	public int updateCommentInserted(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.updateCommentInserted(comment);
	}
}
