/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DoraemonComicsDAO;
import dto.DoraemonComics;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author BAO TRAN
 */
public class viewCartServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            if (session != null) {
                HashMap<String, Integer> cart = (HashMap) session.getAttribute("cart");
                if (cart != null && !cart.isEmpty()) {
                    int money = 0;
                    Set<String> pidlist = cart.keySet();
                    HashMap<String, String> imgList = new HashMap<>();
                    HashMap<String, Integer> priceList = new HashMap<>();
                    for (String pid : pidlist) {
                        int quantity = cart.get(pid);
                        DoraemonComics p = DoraemonComicsDAO.getDoraemons(Integer.parseInt(pid));
                        money = money + p.getPrice() * quantity;
                        imgList.put(pid, p.getImgpath());
                        priceList.put(pid, p.getPrice());
                    }
                    request.setAttribute("totalMoney", money);
                    request.setAttribute("imgList", imgList);
                    request.setAttribute("priceList", priceList);
                }
            }
            request.getRequestDispatcher("viewCart.jsp").forward(request, response);
        } catch (Exception e) {
        }
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
        processRequest(request, response);
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
