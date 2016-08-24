package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.sungkyul.abella.dao.UserDao;
import kr.ac.sungkyul.abella.vo.UserVo;
import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class ModifyFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserVo vo = (UserVo) session.getAttribute("authUser");
		
		vo = new UserDao().get(vo.getNo());
		request.setAttribute("user", vo);
		
		WebUtil.forward("/WEB-INF/views/user/modifyform.jsp", request, response);

	}

}
