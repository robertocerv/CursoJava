package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //1. procesamos los parametros      
        
        //2. Creamos los Javabeans
        Rectangulo rec=new Rectangulo(3, 6);
        
        // ** mediante el alcen request, se envía un dato a la vista
        request.setAttribute("mensaje", "Saludos desde el servlet");
        
        //3. Agregamos el Java Bean a algun alcance
        HttpSession sesion=request.getSession();
        sesion.setAttribute("rectangulo", rec);
        
        //4. Redireccionar a la vista seleccionada
        RequestDispatcher rd=request.getRequestDispatcher("vista/desplegarVariables.jsp");
        rd.forward(request, response);
    }
}
