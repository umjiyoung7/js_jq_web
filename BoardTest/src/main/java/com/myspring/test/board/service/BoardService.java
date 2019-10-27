package com.myspring.test.board.service;

import com.myspring.test.board.vo.ArticleVO;

import java.util.List;
import java.util.Map;

public interface BoardService {
    public List<ArticleVO> listArticles() throws Exception;
    public int addNewArticle(Map articleMap) throws Exception;
    public ArticleVO viewArticle(int articleNO) throws Exception;
    public void modArticle(Map articleMap) throws Exception;
    public void removeArticle(int articleNO) throws Exception;
}
