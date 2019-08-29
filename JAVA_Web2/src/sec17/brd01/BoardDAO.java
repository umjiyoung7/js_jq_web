//package sec17.brd01;
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
//    public List selectAllArticles() {
//        List articlesList = new ArrayList();
//        try {
//            conn = DB.dbConn();
//            String query = "select level, articleNO, parentNO, title, content, id, writeDate"
//                    + " from t_board" + " start with parentNO=0" +
//                    " connect by prior articleNO=parentNO" + " order siblings by articleNO desc";
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
//
//            }
//            rs.close();
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return articlesList;
//    }
//}
