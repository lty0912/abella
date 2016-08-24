package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.sungkyul.abella.dao.UserDao;
import kr.ac.sungkyul.abella.vo.UserVo;
import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter( "name" );
		String gender = request.getParameter( "gender" );
		String id = request.getParameter( "id" );
		String password = request.getParameter( "password" );
		String hint = request.getParameter("hint");
		String answer = request.getParameter("answer");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		
		UserVo vo = new UserVo();
		vo.setName(name);
		vo.setGender(gender);
		vo.setId(id);
		vo.setPassword(password);
		vo.setHint(hint);
		vo.setAnswer(answer);
		vo.setPhone(phone);
		vo.setBirth(birth);
		
		UserDao dao = new UserDao();
		dao.insert(vo);
		
		// 새로고침을 하면 또 DB입력을 요청하므로 페이지를 이동시킴
		WebUtil.redirect("/abella/user?a=joinsuccess", request, response);
		

	}

}
