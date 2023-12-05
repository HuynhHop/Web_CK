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

@WebServlet(urlPatterns = "/infor")
public class Infor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //doPost ?ang ph?, k có tác d?ng
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
//            String c = request.getParameter("password");
//            String d = request.getParameter("firstname");
//            String e = request.getParameter("lastname");
//            String f = request.getParameter("phonenumber");
//            String g = request.getParameter("address");
//            String h = "0";
//            String address="aaaa";
//            String role="aaaa";
            List<Users> users = UserDB.selectUsername(b);
            if (!users.isEmpty()) {
                Users authenticatedUser1 = users.get(1); //lay cot dau tien cot 0
                String address = authenticatedUser1.getAddress();
                Users authenticatedUser2 = users.get(2); //lay cot dau tien cot 0
                String firstname = authenticatedUser2.getFirstname();
                Users authenticatedUser3 = users.get(3); //lay cot dau tien cot 0
                String lastname = authenticatedUser3.getLastname();
                Users authenticatedUser4 = users.get(4); //lay cot dau tien cot 0
                String password = authenticatedUser4.getPassword();
                Users authenticatedUser5 = users.get(5); //lay cot dau tien cot 0
                String phone = authenticatedUser5.getPhonenumber();
                Users authenticatedUser6 = users.get(6); //lay cot dau tien cot 0
                String role = authenticatedUser6.getRoless();
                Users authenticatedUser7 = users.get(7); //lay cot dau tien cot 0
                String username = authenticatedUser7.getUsername();
                Users user = new Users(username,password,firstname,lastname,phone,address,role);
//            if (UserDB.usernameExists(b, c)) {
//                request.setAttribute("mess", "User already exists");
//                url = "/login.jsp";
//            } else {
                // Insert the user into the database
//                UserDB.insert(user);
                request.setAttribute("user", user);
                url = "/thanks_1.jsp";
            }
            else {
                url = "/thanks.jsp";
            }
            
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            String usernameValue = null;

            // Ki?m tra xem cookie "username" có t?n t?i hay không
            for (Cookie cookie : cookies) {
                if ("username".equals(cookie.getName())) {
                    usernameValue = cookie.getValue();
                    break;
                }
            }

            if (usernameValue != null) {
                // N?u cookie "username" t?n t?i, s? d?ng giá tr? ?? truy xu?t d? li?u t? c? s? d? li?u
                List<Users> users = UserDB.selectUsername(usernameValue);

                if (!users.isEmpty()) {
                    Users authenticatedUser = users.get(0);

                    // L?y các giá tr? t? ??i t??ng authenticatedUser
                    String address = authenticatedUser.getAddress();
                    String firstname = authenticatedUser.getFirstname();
                    String lastname = authenticatedUser.getLastname();
                    String password = authenticatedUser.getPassword();
                    String phone = authenticatedUser.getPhonenumber();
                    String role = authenticatedUser.getRoless();

                    // T?o ??i t??ng Users t? d? li?u truy xu?t ???c
                    Users user = new Users(usernameValue, password, firstname, lastname, phone, address, role);

                    // ??t thu?c tính "user" vào request ?? s? d?ng trong trang JSP
                    request.setAttribute("user", user);

                    // Chuy?n h??ng ??n trang thanks_1.jsp
                    request.getRequestDispatcher("/inforUser.jsp").forward(request, response);
                } else {
                    // Tr??ng h?p không tìm th?y thông tin user trong c? s? d? li?u
                    // Có th? x? lý theo ý c?a b?n, ví d?: thông báo l?i ho?c chuy?n h??ng ??n trang khác
                    response.getWriter().write("Không tìm th?y thông tin user cho username: " + usernameValue);
                }
            } else {
                // Tr??ng h?p cookie "username" không t?n t?i
                // Có th? x? lý theo ý c?a b?n, ví d?: chuy?n h??ng ??n trang ??ng nh?p
                response.getWriter().write("Vui lòng ??ng nh?p ?? truy c?p trang này");
            }
        } else {
            // Tr??ng h?p không có cookie nào trong request
            // Có th? x? lý theo ý c?a b?n, ví d?: chuy?n h??ng ??n trang ??ng nh?p
            response.getWriter().write("Vui lòng ??ng nh?p ?? truy c?p trang này");
        }
    }
}
