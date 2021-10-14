package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author roberto.cervantes
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        String usuario=request.getParameter("usuario");
        String password=request.getParameter("password");
        String tecnologias[] =request.getParameterValues("tecnologia");
        String genero=request.getParameter("genero");
        String ocupacion=request.getParameter("ocupacion");
        String musica[] =request.getParameterValues("musica");
        String comentario=request.getParameter("comentarios");
        
        out.println("Usuario: ");
        out.println(usuario);
        out.println("<br>");
        out.println("Password: ");
        out.println(password);
        out.println("<br>");
        out.println("Tecnologias: ");
        for (String tecnologia : tecnologias) {
            out.println(tecnologia);          
        }
        out.println("<br>");
        out.println("Genero: ");
        out.println(genero);
        out.println("<br>");
        out.println("Ocupacion: ");
        out.println(ocupacion);
        out.println("<br>");
        out.println("Musica: ");
        for (String musica1 : musica) {
            out.println(musica1);          
        }
        out.println("<br>");
        out.println("Comentario: ");
        out.println(comentario);

    }
}
