
package com.project.servelet;

import com.project.dao.UserDao;
import com.project.entities.User;
import com.project.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
public class RegisterServelet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
                        
            String check = request.getParameter("check");
            if (check == null) 
            {
                out.println("trams and condition not selected");
            } 
            else 
            {
                String name = request.getParameter("user_name");
                String email = request.getParameter("user_email");
                String mobile = request.getParameter("user_number");
                String gender = request.getParameter("gender");
                String password = request.getParameter("user_pass");
                
            //  create user object and set all data to that
            
                User user = new User(name , password , mobile , gender , email);
                
             //   create a user dao object
             
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                
                if(dao.saveUser(user))
                {
                    out.println("done");
                }
                else
                {
                    out.println("error");
                }
             
                
            }
            
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
