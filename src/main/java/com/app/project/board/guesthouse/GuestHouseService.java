package com.app.project.board.guesthouse;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class GuestHouseService {
	
	@Autowired
	private GuestHouseDao dao;
	
	// 게하 게시글 총 수
	public int gh_list_total() {
		int list_total = dao.gh_list_total();
		return list_total;
	}
	
	// 게하 게시글 작성
	public void gh_write(GuestHouseBean ghBean, GuestHouseRoomBean roomBean, MultipartFile[] files, MultipartFile file) throws Exception {
		String path = "C:\\Users\\rmseh\\Desktop\\workspace\\GuestHouseProject\\src\\main\\webapp\\resources\\assets\\main\\gh_img\\";
		String originalFileName = file.getOriginalFilename();
		ghBean.setTHUMBNAIL(originalFileName);
		File upload_file = new File(path + originalFileName);
		
		if(upload_file.isFile()) {
			file.transferTo(upload_file);
		} else {
			upload_file = new File(path + "img_null.jpg");
			file.transferTo(upload_file);
		}
		dao.gh_info_insert(ghBean);

		List<GuestHouseRoomBean> roomList = new ArrayList<GuestHouseRoomBean>();
		String[] room = roomBean.getROOMS().split(",");
		String[] price = roomBean.getPRICE().split(",");
		String[] room_gender = roomBean.getROOM_GENDER().split(",");
		String[] personnel = roomBean.getPERSONNEL().split(",");

		int result = ghBean.getNO();
		roomBean.setNO(result);
		
		for(int i = 0; i < room.length; i++) {
			roomBean.setROOM_NO(i);
			
			String originalFilesName = files[i].getOriginalFilename();
			roomBean.setROOMS_IMG(originalFilesName);
			File upload_files = new File(path + originalFilesName);
			
			if(upload_files.isFile()) {
				file.transferTo(upload_files);				
			} else {
				upload_files = new File(path + "img_null.jpg");
				file.transferTo(upload_files);
			}
			
			roomList.add(new GuestHouseRoomBean(
						roomBean.getROOM_NO(), roomBean.getNO(), room[i], 
						price[i], room_gender[i], personnel[i], roomBean.getROOMS_IMG()));
		}
		
		dao.gh_room_info_insert(roomList);
		dao.gh_service_info(ghBean);
	}

}