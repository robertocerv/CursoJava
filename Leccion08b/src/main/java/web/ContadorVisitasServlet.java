package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContadorVisitasServlet")
public class ContadorVisitasServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        // se declara la variable contador
        int contador=0;
        
        // revisamos si existe la cookie cotador visitas
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for(Cookie c: cookies){
                if(c.getName().equals("contadorVisitas")){
                    contador=Integer.parseInt(c.getValue());
                }
            }
        }
        
        //incrementamos el contador en uno
        contador++;
        
        //agregamos la respuesta al navegador
        Cookie c=new Cookie("contadorVisitas", Integer.toString(contador));
        
        // la cookie se almacenará en el cliente por una hora (es decir 3600 segundos)
        
        c.setMaxAge(3600);
        
        // agregamos la cookie creada 
        response.addCookie(c);
        
        // mandamos el mensaje al navegador
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        out.print("contador de visitas de cada cliente: "+contador);
    }
}
