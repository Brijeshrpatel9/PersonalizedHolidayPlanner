/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Brijesh Admin
 */
public class BookedTripServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        ArrayList<NewTrip> booktrip;
        try {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName="+DBPara.dbname+";username="+DBPara.uname+";password="+DBPara.pwd+";");
            Statement st = con.createStatement();

            String email = (String) session.getAttribute("Username");
            String str = "select T_ID,Trip_Name,From_Place,To_Place,Status from TripMaster where (Status='Booked' ) and Cust_ID='" + email + "'";

            ResultSet rs = st.executeQuery(str);
            booktrip = new ArrayList<NewTrip>();

            while (rs.next()) {
                
                NewTrip s = new NewTrip();
                s.setTripId(rs.getInt(1));
                s.setTripname(rs.getString(2));
                s.setFrom(rs.getString(3));
                s.setTo(rs.getString(4));
                s.setStatus(rs.getString(5));

                booktrip.add(s);

            }
            request.setAttribute("BookTrip", booktrip);
            con.close();
            RequestDispatcher rd = request.getRequestDispatcher("bookedtrip.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            //DO NOTHING
        }
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
    }
}
