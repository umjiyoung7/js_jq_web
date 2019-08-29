//package sec17.brd02;
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
//            String query = "select level, articleNO, parentNO, title, content, id, writeDate"
//                    + " from t_board" + " start with parentNO=0"
//                    + " connect by prior articleNO=parentNO"
//                    + " order siblings by articleNO desc";
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
//    private int getNewArticleNO() {
//        try {
//            conn = DB.dbConn();
//            String query = "select max(articleNO) from t_board ";
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
//    public void insertNewArticle(ArticleVO articleVO) {
//        try {
//            conn = DB.dbConn();
//            int articleNO = getNewArticleNO();
//            int parentNO = articleVO.getParentNO();
//            String title = articleVO.getTitle();
//            String content = articleVO.getContent();
//            String id = articleVO.getId();
//            String imageFileName = articleVO.getImageFileName();
//            String query = "insert into t_board(articleNO, parentNO, title, content, imageFileName, id)"
//                    + " values(?,?,?,?,?,?)";
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
//    }
//
//}
