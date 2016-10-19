package kr.ac.sungkyul.abella.web.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.sungkyul.abella.dao.UserDao;
import kr.ac.sungkyul.abella.vo.UserVo;
import kr.ac.sungkyul.web.Action;
import net.sf.json.JSONObject;

public class CheckIdAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		UserVo vo = new UserDao().get(id);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("result", "success");
		map.put("data", vo != null); // true -> exist
									 // false -> not exist
		
		// java객체를 json 으로 바꿔주는 라이브러리
		JSONObject jsonObject = JSONObject.fromObject(map);
		out.println(jsonObject.toString());
	}

}
