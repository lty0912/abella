package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.sungkyul.abella.dao.UserDao;
import kr.ac.sungkyul.abella.vo.UserVo;
import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class ModifyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		
		UserVo vo = new UserVo();
		vo.setId(id);
		vo.setPassword(password);
		vo.setPhone(phone);
		vo.setBirth(birth);
		
		UserDao dao = new UserDao();
		dao.update(vo);
		
		// 새로고침을 하면 또 DB수정을 요청하므로 페이지를 이동시킴
		WebUtil.redirect("/abella/user?a=modifysuccess", request, response);
		
		
	}

}
