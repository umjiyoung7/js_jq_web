package com.myspring.test.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;

public class ImageVO {
    private int imaeFileNO;
    private String imageFileName;
    private Date regDate;
    private int articleNO;

    public int getImaeFileNO() {
        return imaeFileNO;
    }

    public void setImaeFileNO(int imaeFileNO) {
        this.imaeFileNO = imaeFileNO;
    }

    public String getImageFileName() {
        return imageFileName;
    }

    public void setImageFileName(String imageFileName) {
        try {
            if (imageFileName != null && imageFileName.length() != 0) {
                this.imageFileName = URLEncoder.encode(imageFileName, "UTF-8");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public int getArticleNO() {
        return articleNO;
    }

    public void setArticleNO(int articleNO) {
        this.articleNO = articleNO;
    }
}
