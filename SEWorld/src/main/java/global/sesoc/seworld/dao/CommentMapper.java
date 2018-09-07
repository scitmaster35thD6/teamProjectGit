package global.sesoc.seworld.dao;

import java.util.List;

import global.sesoc.seworld.dto.Comment;

public interface CommentMapper {
	public abstract List<Comment> selectAllCommentsFromMember(String memberId);

	public abstract List<Comment> selectAllCommentsFromExhibition(String exhibitionId);

	public abstract Comment selectOneComment(Comment comment);

	public abstract int insertComment(Comment comment);

	public abstract int updateRatingDeleted(Comment comment);

	public abstract int updateCommentDeleted(Comment comment);

	public abstract int updateCommentInserted(Comment comment);
}
