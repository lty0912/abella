package kr.ac.sungkyul.abella.web.user;

import kr.ac.sungkyul.abella.web.main.MainAction;
import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.ActionFactory;

public class UserActionFactory extends ActionFactory {

	@Override
	public Action getAction(String actionName) {
		Action action = null;

		if ("joinform".equals(actionName)) {
			action = new JoinFormAction();
		} else if ("join".equals(actionName)) {
			action = new JoinAction(); 
		} else if ("joinsuccess".equals(actionName)) {
			action = new JoinSuccessAction();
		} else if ("loginform".equals(actionName)) {
			action = new LoginFormAction();
		} else if ("login".equals(actionName)) {
			action = new LoginAction();
		} else if ("checkid".equals(actionName)) {
			action = new CheckIdAction();
		} else if ("modifyform".equals(actionName)) {
			action = new ModifyFormAction();
		} else if ("modify".equals(actionName)) {
			action = new ModifyAction();
		} else if ("modifysuccess".equals(actionName)) {
			action = new ModifySuccessAction();
		} else if ("logout".equals(actionName)) {
			action = new LogoutAction();
		} else if ("mypage".equals(actionName)) {
			action = new MypageAction();
		} else if ("dropout".equals(actionName)) {
			action = new DropoutAction();
		} else if ("dropoutform".equals(actionName)) {
			action = new DropoutFormAction();
		} else if ("dropoutsuccess".equals(actionName)) {
			action = new DropoutSuccessAction();
		} else if ("findform".equals(actionName)) {
			action = new FindFormAction();
		} else if ("findid".equals(actionName)) {
			action = new FindIdAction();
		} else if ("findpwform".equals(actionName)) {
			action = new FindPwFormAction();
		} else if ("findpw".equals(actionName)) {
			action = new FindPwAction();
		} else if ("changepw".equals(actionName)) {
			action = new ChangePwAction();
		} else if ("changepwsuccess".equals(actionName)) {
			action = new ChangePwSuccessAction();
		}

			return action;
	}

}
