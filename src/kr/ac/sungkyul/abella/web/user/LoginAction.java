package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.sungkyul.abella.dao.UserDao;
import kr.ac.sungkyul.abella.vo.UserVo;
import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.WebUtil;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter( "id" );
		String password = request.getParameter( "password" );
		String autoLogin = request.getParameter( "autoLogin" );
		String saveId = request.getParameter( "saveId" );
		UserDao dao = new UserDao();
		UserVo vo = dao.get(id, password);
		if( vo == null ) {
			/*로그인 실패*/
			WebUtil.redirect("/abella/user?a=loginform&r=fail", request, response);
			return;
		}
		
		/* 로그인 처리 */
		HttpSession session = request.getSession( true );
		if (vo.getType_no() == 0) {
			session.setAttribute( "admin", vo );
		} else if (vo.getType_no() == 1) {
			session.setAttribute( "authUser", vo );
		} else if (vo.getType_no() == 2) {
			session.setAttribute( "staff", vo );
		}
		
		
		Cookie cookieId = new Cookie("saveId", id);
		Cookie autoCookie = new Cookie("autoLogin", id);
		
		if(autoLogin != null){	//자동로그인 선택시
			autoCookie.setMaxAge(7*24*60*60);
			if(saveId == null){
				cookieId.setMaxAge(0);
			}
		}else if(saveId != null){ //아이디 저장 선택시
			cookieId.setMaxAge(7*24*60*60);
		}else{
			cookieId.setMaxAge(0);
			autoCookie.setMaxAge(0);
		}
		cookieId.setPath("/");
		autoCookie.setPath("/");
		response.addCookie(cookieId);
		response.addCookie(autoCookie);

		String url = (String) session.getAttribute("url");
		session.removeAttribute("url");
		// 메인으로 리다이렉트
		WebUtil.redirect( url, request, response);
	}

}
