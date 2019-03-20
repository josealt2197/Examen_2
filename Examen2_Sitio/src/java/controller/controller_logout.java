package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

public class controller_logout extends ActionSupport {

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        session.remove("session_correo");
        session.remove("session_cedula");
        session.remove("session_nombre");
        session.remove("session_apellido");
        session.remove("session_telefono");
        return SUCCESS;
    }
}
