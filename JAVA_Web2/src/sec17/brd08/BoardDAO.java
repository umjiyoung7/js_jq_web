package sec17.brd08;

import common.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class BoardDAO {
    Connection conn;
    PreparedStatement pstmt;

    public List selectAllArticles(Map pagingMap) {
        List articlesList = new ArrayList();
        int section = (Integer) pagingMap.get("section");
        int pageNum = (Integer) pagingMap.get("pageNum");
        try {
            conn = DB.dbConn();
            String query = "SELECT * FROM ( "
                    + "select ROWNUM  as recNum," + "LVL,"
                    + "articleNO,"
                    + "parentNO,"
                    + "title,"
                    + "id,"
                    + "writeDate,"
                    + "newArticle"
                    + " from (select LEVEL as LVL, "
                    + "articleNO,"
                    + "parentNO,"
                    + "title,"
                    + "id,"
                    + "writeDate,"
                    + "decode(round(sysdate-writedate), 0, 'true', 'false') as newArticle"
                    + " from t_board"
                    + " START WITH  parentNO=0"
                    + " CONNECT BY PRIOR articleNO = parentNO"
                    + "  ORDER SIBLINGS BY articleNO DESC)"
                    + ") "
                    + " where recNum between(?-1)*100+(?-1)*10+1 and (?-1)*100+?*10";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, section);
            pstmt.setInt(2, pageNum);
            pstmt.setInt(3, section);
            pstmt.setInt(4, pageNum);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int level = rs.getInt("lvl");
                int articleNO = rs.getInt("articleNO");
                int parentNO = rs.getInt("parentNO");
                String title = rs.getString("title");
                String id = rs.getString("id");
                Date writeDate = rs.getDate("writeDate");
                boolean newArticle = Boolean.parseBoolean(rs.getString("newArticle"));
                ArticleVO article = new ArticleVO();
                article.setLevel(level);
                article.setArticleNO(articleNO);
                article.setParentNO(parentNO);
                article.setTitle(title);
                article.setId(id);
                article.setWriteDate(writeDate);
                article.setNewArticle(newArticle);
                articlesList.add(article);
            }
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articlesList;
    }

    public List selectAllArticles(Map pagingMap, String notice_yn) {
        List articlesList = new ArrayList();
        int section = (Integer) pagingMap.get("section");
        int pageNum = (Integer) pagingMap.get("pageNum");
        try {
            conn = DB.dbConn();
            String query = "SELECT * FROM ( "
                    + "select ROWNUM  as recNum," + "LVL,"
                    + "articleNO,"
                    + "parentNO,"
                    + "title,"
                    + "id,"
                    + "writeDate,"
                    + "newArticle"
                    + " from (select LEVEL as LVL, "
                    + "articleNO,"
                    + "parentNO,"
                    + "title,"
                    + "id,"
                    + "writeDate,"
                    + "decode(round(sysdate-writedate), 0, 'true', 'false') as newArticle"
                    + " from t_board"
                    + " where notice_yn=?"
                    + " START WITH  parentNO=0"
                    + " CONNECT BY PRIOR articleNO = parentNO"
                    + "  ORDER SIBLINGS BY articleNO DESC)"
                    + ") "
                    + " where recNum between(?-1)*100+(?-1)*10+1 and (?-1)*100+?*10";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, notice_yn);
            pstmt.setInt(2, section);
            pstmt.setInt(3, pageNum);
            pstmt.setInt(4, section);
            pstmt.setInt(5, pageNum);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int level = rs.getInt("lvl");
                int articleNO = rs.getInt("articleNO");
                int parentNO = rs.getInt("parentNO");
                String title = rs.getString("title");
                String id = rs.getString("id");
                Date writeDate = rs.getDate("writeDate");
                boolean newArticle = Boolean.parseBoolean(rs.getString("newArticle"));
                ArticleVO article = new ArticleVO();
                article.setLevel(level);
                article.setArticleNO(articleNO);
                article.setParentNO(parentNO);
                article.setTitle(title);
                article.setId(id);
                article.setWriteDate(writeDate);
                article.setNewArticle(newArticle);
                articlesList.add(article);
            }
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articlesList;
    }

    public List selectAllArticles() {
        List articlesList = new ArrayList();
        try {
            conn = DB.dbConn();
            String query = "SELECT LEVEL,articleNO,parentNO,title,content,id,writeDate" + " from t_board"
                    + " START WITH  parentNO=0" + " CONNECT BY PRIOR articleNO=parentNO"
                    + " ORDER SIBLINGS BY articleNO DESC";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int level = rs.getInt("level");
                int articleNO = rs.getInt("articleNO");
                int parentNO = rs.getInt("parentNO");
                String title = rs.getString("title");
                String content = rs.getString("content");
                String id = rs.getString("id");
                Date writeDate = rs.getDate("writeDate");
                ArticleVO article = new ArticleVO();
                article.setLevel(level);
                article.setArticleNO(articleNO);
                article.setParentNO(parentNO);
                article.setTitle(title);
                article.setContent(content);
                article.setId(id);
                article.setWriteDate(writeDate);
                articlesList.add(article);
            }
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articlesList;
    }

    private int getNewArticleNO() {
        try {
            conn = DB.dbConn();
            String query = "SELECT  max(articleNO) from t_board ";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery(query);
            if (rs.next())
                return (rs.getInt(1) + 1);
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public int insertNewArticle(ArticleVO article) {
        int articleNO = getNewArticleNO();
        try {
            conn = DB.dbConn();
            int parentNO = article.getParentNO();
            String title = article.getTitle();
            String content = article.getContent();
            String id = article.getId();
            String imageFileName = article.getImageFileName();
            String notice_yn = article.getNotice_yn();
            String query = "INSERT INTO t_board (articleNO, parentNO, title, content, imageFileName, id, NOTICE_YN)"
                    + " VALUES (?, ? ,?, ?, ?, ?, ?)";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, articleNO);
            pstmt.setInt(2, parentNO);
            pstmt.setString(3, title);
            pstmt.setString(4, content);
            pstmt.setString(5, imageFileName);
            pstmt.setString(6, id);
            pstmt.setString(7, notice_yn);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return articleNO;
    }

    public ArticleVO selectArticle(int articleNO) {
        ArticleVO article = new ArticleVO();
        try {
            conn = DB.dbConn();
            String query = "select articleNO,parentNO,title,content, imageFileName,id,writeDate" + " from t_board"
                    + " where articleNO=?";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, articleNO);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            int _articleNO = rs.getInt("articleNO");
            int parentNO = rs.getInt("parentNO");
            String title = rs.getString("title");
            String content = rs.getString("content");
            String imageFileName = rs.getString("imageFileName");
            String id = rs.getString("id");
            Date writeDate = rs.getDate("writeDate");

            article.setArticleNO(_articleNO);
            article.setParentNO(parentNO);
            article.setTitle(title);
            article.setContent(content);
            article.setImageFileName(imageFileName);
            article.setId(id);
            article.setWriteDate(writeDate);
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return article;
    }

    public void updateArticle(ArticleVO article) {
        int articleNO = article.getArticleNO();
        String title = article.getTitle();
        String content = article.getContent();
        String imageFileName = article.getImageFileName();
        try {
            conn = DB.dbConn();
            String query = "update t_board  set title=?,content=?";
            if (imageFileName != null && imageFileName.length() != 0) {
                query += ",imageFileName=?";
            }
            query += " where articleNO=?";

            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, title);
            pstmt.setString(2, content);
            if (imageFileName != null && imageFileName.length() != 0) {
                pstmt.setString(3, imageFileName);
                pstmt.setInt(4, articleNO);
            } else {
                pstmt.setInt(3, articleNO);
            }
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteArticle(int articleNO) {
        try {
            conn = DB.dbConn();
            String query = "DELETE FROM t_board ";
            query += " WHERE articleNO in (";
            query += "  SELECT articleNO FROM  t_board ";
            query += " START WITH articleNO = ?";
            query += " CONNECT BY PRIOR  articleNO = parentNO )";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, articleNO);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Integer> selectRemovedArticles(int articleNO) {
        List<Integer> articleNOList = new ArrayList<Integer>();
        try {
            conn = DB.dbConn();
            String query = "SELECT articleNO FROM  t_board  ";
            query += " START WITH articleNO = ?";
            query += " CONNECT BY PRIOR  articleNO = parentNO";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, articleNO);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                articleNO = rs.getInt("articleNO");
                articleNOList.add(articleNO);
            }
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articleNOList;
    }

    public int selectTotArticles() {
        try {
            conn = DB.dbConn();
            String query = "select count(articleNO) from t_board ";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next())
                return (rs.getInt(1));
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

}

