package kr.ac.sungkyul.abella.web.information;

import kr.ac.sungkyul.web.Action;
import kr.ac.sungkyul.web.ActionFactory;

public class InformationActionFactory extends ActionFactory {

	@Override
	public Action getAction(String actionName) {
		return new InformationAction();
	}

}
