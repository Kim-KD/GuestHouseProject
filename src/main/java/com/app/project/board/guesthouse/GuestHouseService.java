package com.app.project.board.guesthouse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GuestHouseService {
	
	@Autowired
	private GuestHouseDao dao;

	public int gh_list_total() {
		int list_total = dao.gh_list_total();
		return list_total;
	}
	
	

}