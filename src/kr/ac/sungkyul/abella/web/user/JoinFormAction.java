package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class JoinFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WebUtil.forward("/WEB-INF/views/user/joinform.jsp", request, response);
	}

}
