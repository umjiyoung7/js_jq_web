package com.myspring.test.board.dao;

import com.myspring.test.board.vo.ArticleVO;
import org.springframework.dao.DataAccessException;

import java.util.List;
import java.util.Map;

public interface BoardDAO {
    public List selectAllArticlesList() throws DataAccessException;
    public int insertNewArticle(Map articleMap) throws DataAccessException;
    public ArticleVO selectArticle(int articleNO) throws DataAccessException;
    public void updateArticle(Map articleMap) throws DataAccessException;
    public void deleteArticle(int articleNO) throws DataAccessException;
    public List selectImageFileList(int articleNO) throws DataAccessException;
}
