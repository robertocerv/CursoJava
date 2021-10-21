package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ManejoCookies")
public class CookiesServlets extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //suponemos que el usuario visita por primera vez nuestro sitio
        boolean nuevoUsuario=true;
        Cookie[] cookies=request.getCookies();
        //buscar si ya fue creada una cookie con aterioridad
        //llamada visitante recurrente
        if(cookies!=null){
            for(Cookie c: cookies){
                if(c.getName().equals("visitanterecurrente")&&c.getValue().equals("si")){
                    //si ya existe la cookie, entonces es un usuario recurrente
                    nuevoUsuario=false;
                    break;
                }
            }
        }
        
            
        String mensaje="";
        if(nuevoUsuario){
            Cookie visitanteCookie=new Cookie("visitanterecurrente","si");
            response.addCookie(visitanteCookie);
            mensaje="gracias por visitarnos por primera vez";
        }else{
            mensaje="gracias por visitarnos otra vez";
        }
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.print(mensaje);
            out.close();
        }
    }
}
