package com.test2.ex02;

import net.coobird.thumbnailator.Thumbnails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

//@Controller
public class FileDownloadController {
    private static String CURR_IMAGE_REPO_PATH = "c:\\spring\\image_repo";
    @RequestMapping("/download")
    protected void download(@RequestParam("imageFileName") String imageFileName, HttpServletResponse response) throws Exception {
        OutputStream out = response.getOutputStream();
        String filePath = CURR_IMAGE_REPO_PATH + "\\" + imageFileName;
        File image = new File(filePath);
        int lastIndex = imageFileName.lastIndexOf(".");
        String fileName = imageFileName.substring(0, lastIndex);
        File thumbnail = new File(CURR_IMAGE_REPO_PATH + "\\" + "thumbnail" + "\\" + fileName + ".png");
//        if (image.exists()) {
//            thumbnail.getParentFile().mkdirs();
//            Thumbnails.of(image).size(50, 50).outputFormat("png").toFile(thumbnail);
//        }

//        FileInputStream in = new FileInputStream(thumbnail);
//        byte[] buffer = new byte[1024 * 8];
//        while (true) {
//            int count = in.read(buffer);
//            if (count == -1) {
//                break;
//            }
//            out.write(buffer, 0, count);
//        }
//        in.close();
//        out.close();

        // 썸네일 이미지 바로 출력하기
        if (image.exists()) {
            Thumbnails.of(image).size(100, 100).outputFormat("png").toOutputStream(out);
        } else {
            return;
        }
        byte[] buffer = new byte[1024 * 8];
        out.write(buffer);
        out.close();
    }
}
