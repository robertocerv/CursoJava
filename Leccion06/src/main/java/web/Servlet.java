package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        // Simulando valores correctos
        String usuarioOK="Juan";
        String passwordOk="123";
        
        String usuario=request.getParameter("usuario");
        String password=request.getParameter("password");
        
        PrintWriter out =response.getWriter();
        
        if(usuarioOK.equals(usuario)&& passwordOk.equals(password)){
            out.print("usuario correcto <br> usuario: "+usuario+"<br> contraseña: "+password);
        }else{
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED,"Las credenciales son incorrectas");
        }
    }
}
