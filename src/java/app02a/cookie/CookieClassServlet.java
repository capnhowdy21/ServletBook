
package app02a.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dan Cannon
 */
@WebServlet(name="CookieClassServlet", urlPatterns={"/cookieClass"})
public class CookieClassServlet extends HttpServlet {
   private static final long serialVersionUID = 837369L;
   
   private String[] methods = {
       "clone", "getComment", "getDomain", "getMaxAge", "getName", "getPath",
       "getSecure", "getValue", "getVersion", "isHttpOnly", "setComment", "setDomain",
       "setHttpOnly", "setMaxAge", "setPath", "setSecure", "setValue", "setVersion"
   };
   
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        Cookie[] cookies = request.getCookies();
        Cookie maxRecordsCookie = null;
        if(cookies != null){
            for (Cookie cookie: cookies){
                if(cookie.getName().equals("maxRecords")){
                    maxRecordsCookie = cookie;
                    break;
                }
            }
        }
        
        int maxRecords = 5;
        if (maxRecordsCookie != null){
            try{
                maxRecords = Integer.parseInt(maxRecordsCookie.getValue());
            } catch (NumberFormatException e){
                // do nothing
            }
        }
        
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.print("<html><head>" + "<title>Cookie Class</title>"
                + "</head><body>" + PreferenceServlet.MENU
                + "<div>Here are some of the methods in "
                + "javax.servlet.http.Cookie");
        writer.print("<ul>");
        for (int i = 0; i < maxRecords; i++) {
            writer.println("<li>" + methods[i] + "</li>");
        }
        writer.print("</ul>");
        writer.print("</div></body></html>");
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
