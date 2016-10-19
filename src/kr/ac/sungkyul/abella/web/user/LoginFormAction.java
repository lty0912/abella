package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class LoginFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		if(url != null){
			int s1 = url.indexOf("/", 7);
			url = url.substring(s1);
			request.getSession().setAttribute("url", url);
		}
		WebUtil.forward("/WEB-INF/views/user/loginform.jsp", request, response);
	}

}
