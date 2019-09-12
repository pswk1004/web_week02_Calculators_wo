/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Student
 */
@WebServlet(name = "ArithmeticCalculatorServlet", urlPatterns = {"/arithmetic"})
public class ArithmeticCalculatorServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/arithmetic.jsp";
        request.setAttribute("message", "---");
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
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
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String calculate = request.getParameter("calculate");
        boolean check = true;

        try {
            int num1 = Integer.parseInt(first);
            int num2 = Integer.parseInt(second);
        } catch (NumberFormatException e) {
            check = false;
        }

        if (first == null || first == "" || second == null || second == "" || !check) {
            request.setAttribute("message", "invalid");
            getServletContext().getRequestDispatcher("/arithmetic.jsp").forward(request, response);
            return;
        } else {
            int result = 0;

            switch (calculate) {
                case "+":
                    result = Integer.parseInt(first) + Integer.parseInt(second);
                    break;
                case "-":
                    result = Integer.parseInt(first) - Integer.parseInt(second);
                    break;
                case "*":
                    result = Integer.parseInt(first) * Integer.parseInt(second);
                    break;
                case "%":
                    result = Integer.parseInt(first) % Integer.parseInt(second);
                    break;
            }
            request.setAttribute("first_val", first);
            request.setAttribute("second_val", second);

            request.setAttribute("message", result);
            getServletContext().getRequestDispatcher("/arithmetic.jsp").forward(request, response);
            return;
        }
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
