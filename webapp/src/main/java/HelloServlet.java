import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/HelloServlet")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();

        out.println("From Servlet!");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String isbn=request.getParameter("isbn");
        String name=request.getParameter("name");
        String author=request.getParameter("author");
        float price=Float.parseFloat(request.getParameter("price"));

        PrintWriter out=response.getWriter();

        out.println(isbn);
        out.println(name);
        out.println(author);
        out.println(price);
    }
}
