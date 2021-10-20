package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/GeneracionExcel")
public class GeneracionExcel extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //indicamos el tipo de respuesta al navegador
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment;filename=excelEjemplo.xls");
        //para un uso mas profesional de excel usar poi.apache.org
        
        //indicar al navegador que no guarde cache
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", -1);
        //Desplegar la info al cliente
        PrintWriter out = response.getWriter();
        out.print("*\tValores");
        out.print("Num1\t1");
        out.print("Num2\t2");
        out.print("Total\t=POTENCIA(B1;B2)");
    }
}
