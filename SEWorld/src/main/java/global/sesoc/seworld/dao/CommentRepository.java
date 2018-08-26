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

	public List<Comment> viewAllCommentsFromMember(String memberId) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.viewAllCommentsFromMember(memberId);
	}

	public List<Comment> viewAllCommentsFromExhibition(String exhibitionId) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.viewAllCommentsFromExhibition(exhibitionId);
	}

	public Comment viewCommentDetail(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.viewCommentDetail(comment);
	}

	public int insertOneComment(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.insertComment(comment);
	}

	public int deleteOneComment(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.deleteComment(comment);
	}

	public int updateOneComment(Comment comment) {
		CommentMapper commentMapper = sqlSession.getMapper(CommentMapper.class);
		return commentMapper.updateComment(comment);
	}
}
