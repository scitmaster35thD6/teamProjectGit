package global.sesoc.seworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import global.sesoc.seworld.dto.AskFile;

public class AskFileRepository {
	@Autowired
	SqlSession sqlSession;

	public List<AskFile> viewAllAskFiles(String askId) {
		AskFileMapper askFileMapper = sqlSession.getMapper(AskFileMapper.class);
		return askFileMapper.selectAllAskFiles(askId);
	}

	public AskFile selectOneAskFile(String askFileId) {
		AskFileMapper askFileMapper = sqlSession.getMapper(AskFileMapper.class);
		return askFileMapper.selectOneAskFile(askFileId);
	}
	
	public int insertOneAskFile(AskFile askFile) {
		AskFileMapper askFileMapper = sqlSession.getMapper(AskFileMapper.class);
		return askFileMapper.insertOneAskFile(askFile);
	}

	public int deleteOneAskFile(String askFileId) {
		AskFileMapper askFileMapper = sqlSession.getMapper(AskFileMapper.class);
		return askFileMapper.deleteOneAskFile(askFileId);
	}

	public int updateOneAskFile(AskFile askFile) {
		AskFileMapper askFileMapper = sqlSession.getMapper(AskFileMapper.class);
		return askFileMapper.updateOneAskFile(askFile);
	}
}
