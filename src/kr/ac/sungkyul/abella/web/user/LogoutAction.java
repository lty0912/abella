package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class LogoutAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie cookiePwd = new Cookie("autoLogin", null);
		cookiePwd.setMaxAge(0);
		cookiePwd.setPath("/");
		response.addCookie(cookiePwd);
		HttpSession session = request.getSession( true );
		session.invalidate();
		
		WebUtil.redirect( "/abella/main", request, response);

	}

}
