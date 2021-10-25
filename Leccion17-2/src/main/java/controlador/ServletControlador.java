package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //1. procesamos los parametros      
        String accion=request.getParameter("accion");
        
        //2. Creamos los Javabeans
        Rectangulo recRequest=new Rectangulo(1,2);
        Rectangulo recSesion=new Rectangulo(3,4);
        Rectangulo recAplicacion=new Rectangulo(5,6);
        
        request.setAttribute("mensaje", "Asignar variables");
        
        //3. Agregamos el Java Bean a algun alcance
        // 3.1 revisamos la accion proporcionada
        if("agregaVariables".equals(accion)){
            // este espara el alcance request
            request.setAttribute("rectanguloRequest", recRequest);
            // alcance sesion
            HttpSession sesion=request.getSession();
            sesion.setAttribute("rectanguloSesion", recSesion);
            // alcance aplicacion
            ServletContext aplicacion= this.getServletContext();
            aplicacion.setAttribute("rectanguloAplicacion", recAplicacion);
            
            //agregamos un mensaje para ver que se ejecutó
            request.setAttribute("mensaje", "Las variables fueron agregadas");
            
            // 4 Redireccionamos a la pagina index
            request.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(request, response);
            
        } else if("listarVariables".equals(accion)){
            //4.1 Redireccionar a la vista seleccionada
            request.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(request, response);
        } else {
            //4.2  si no hay ningun parametro, redireccionamos a la pagina de inicio
            request.setAttribute("mensaje", "Accion no proporcionada o desconocida");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
            //La siguiente linea sirve para redirigir a una pagina,  pero no permite enviar parametros desde el controlador, ya que no 
            //propaga los objetos request y response
            //response.sendRedirect("index.jsp");
        }
    }
}
