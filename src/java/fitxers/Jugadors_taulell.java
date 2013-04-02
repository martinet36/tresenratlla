package fitxers;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mallol
 */
@WebServlet(name = "Jugadors_taulell", urlPatterns = {"/Jugadors_taulell"})
public class Jugadors_taulell extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if(request.getSession().getAttribute("num_jugadors") == null){
            int i = 0;
            boolean plens = false;
            Taulell[] taulells = (Taulell[])getServletContext().getAttribute("taulells");
            while(taulells[i].retornar_jugadors() == 2 && i<taulells.length-1){
                i++;
                if(i==taulells.length-1 && taulells[i].retornar_jugadors() == 2){
                    plens=true;
                }
            }

            if(plens){
                out.println("Tots els taulells estan ocupats...<br>");
                out.println("<a href='index.jsp'>Tornar a l'inici</a>");
            }
            else{
                taulells[i].incrementar_jugadors();
                getServletContext().setAttribute("taulells", taulells);
                request.getSession().setAttribute("numJugador", taulells[i].retornar_jugadors());
                request.getSession().setAttribute("numTau", i);
            }
            
         }
        
         response.sendRedirect("partida.jsp");      
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
