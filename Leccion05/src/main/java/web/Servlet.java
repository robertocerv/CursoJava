package web;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ServletHeaders")
public class Servlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        out.println(request.getMethod()+"<br>");
        out.println(request.getRequestURI()+"<br>");
        
        Enumeration cabeceros=request.getHeaderNames();
        while(cabeceros.hasMoreElements()){
            String nombreCabecero=(String)cabeceros.nextElement();
            out.println(nombreCabecero+"-"+request.getHeader(nombreCabecero)+"<br>");
        }
    }
}
