
package javaapplication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Main.java")
public class Main extends HttpServlet { 
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

        String id = request.getParameter("cedula");
        int ced = Integer.parseInt(id);
        String name = request.getParameter("nombre");
        String last = request.getParameter("apellido");
        String mail = request.getParameter("correo");
        String phone = request.getParameter("celular");
        
        HotelGeneratorService WebService = new HotelGeneratorService();
        
        WebService.getBasicHttpBindingIHotelGeneratorService().insertClient(ced, name, last, mail, phone);
     }
}
