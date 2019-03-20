package controller;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

public class controller_logout extends ActionSupport {

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        session.remove("userName");
        session.remove("password");
        return SUCCESS;
    }
}
