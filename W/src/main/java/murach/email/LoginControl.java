package murach.email;

import java.io.*;
import java.util.List;
//import javax.mail.MessagingException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.*;
import murach.business.Users;
import murach.data.UserDB;
//import murach.util.MailUtilLocal;

@WebServlet(urlPatterns = "/login")
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = "/index.jsp";
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }
        if (action.equals("join")) {
            url = "/index.jsp";
        } else if (action.equals("add")) {
//            String a = "a";
            String b = request.getParameter("username");
            String c = request.getParameter("password");
//            String d = request.getParameter("firstname");
//            String e = request.getParameter("lastname");
//            String f = request.getParameter("phonenumber");
//            String g = request.getParameter("address");
//            String h = "0";
//            String address="aaaa";
//            String role="aaaa";
//            Users user = new Users(b,c,d,e,f,g,h);

//            Users user=new Users();
//            if (UserDB.selectUser(b,c) !=null){
//                request.setAttribute("user", user);
//                url = "/index.jsp";}
//            else{
//                request.setAttribute("mess", "wrong username or password");
//                url = "/index_1.jsp";
//            }
            List<Users> users = UserDB.selectUser(b, c);

            if (!users.isEmpty()) {
                // User authenticated successfully
                request.setAttribute("user", users.get(0));
                url = "/index.jsp";
            } else {
                // Authentication failed
                request.setAttribute("mess", "Wrong username or password");
                url = "/index_1.jsp";
            }
                
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        doPost(request, response);
        request.getRequestDispatcher("index_1.jsp").forward(request,response);
    }
}
