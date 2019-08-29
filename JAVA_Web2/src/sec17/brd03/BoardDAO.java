//package sec17.brd03;
//
//import common.DB;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//public class BoardDAO {
//    Connection conn;
//    PreparedStatement pstmt;
//
//    public List<ArticleVO> selectAllArticles(){
//        List<ArticleVO> articlesList = new ArrayList<>();
//        try {
//            conn = DB.dbConn();
//            String query = "SELECT LEVEL,articleNO,parentNO,title,content,id,writeDate" + " from t_board"
//                    + " START WITH  parentNO=0" + " CONNECT BY PRIOR articleNO=parentNO"
//                    + " ORDER SIBLINGS BY articleNO DESC";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            ResultSet rs = pstmt.executeQuery();
//            while (rs.next()) {
//                int level = rs.getInt("level");
//                int articleNO = rs.getInt("articleNO");
//                int parentNO = rs.getInt("parentNO");
//                String title = rs.getString("title");
//                String content = rs.getString("content");
//                String id = rs.getString("id");
//                Date writeDate = rs.getDate("writeDate");
//                ArticleVO article = new ArticleVO();
//                article.setLevel(level);
//                article.setArticleNO(articleNO);
//                article.setParentNO(parentNO);
//                article.setTitle(title);
//                article.setContent(content);
//                article.setId(id);
//                article.setWriteDate(writeDate);
//                articlesList.add(article);
//            }
//            rs.close();
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return articlesList;
//    }
//
//    private int getNewArticleNO(){
//        try {
//            conn=DB.dbConn();
//            String query = "select max(articleNO) from t_board";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            ResultSet rs = pstmt.executeQuery(query);
//            if (rs.next()) {
//                return (rs.getInt(1) + 1);
//            }
//            rs.close();
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return 0;
//    }
//
//    public int insertNewArticle(ArticleVO article) {
//        int articleNO = getNewArticleNO();
//        try {
//            conn = DB.dbConn();
//            int parentNO = article.getParentNO();
//            String title = article.getTitle();
//            String content = article.getContent();
//            String id = article.getId();
//            String imageFileName = article.getImageFileName();
//            String query = "INSERT INTO t_board (articleNO, parentNO, title, content, imageFileName, id)"
//                    + " VALUES (?, ? ,?, ?, ?, ?)";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            pstmt.setInt(1, articleNO);
//            pstmt.setInt(2, parentNO);
//            pstmt.setString(3, title);
//            pstmt.setString(4, content);
//            pstmt.setString(5, imageFileName);
//            pstmt.setString(6, id);
//            pstmt.executeUpdate();
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return articleNO;
//    }
//}
