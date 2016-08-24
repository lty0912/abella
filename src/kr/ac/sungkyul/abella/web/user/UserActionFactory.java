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
		}

			return action;
	}

}
