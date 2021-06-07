import com.zut.domain.Book;
import com.zut.service.SaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/HelloServlet")
public class HelloServlet extends HttpServlet {
    private SaleService service;
    private Book book;
    @Autowired
    public void setService(SaleService service) {
        this.service = service;
    }
    @Autowired
    public void setBook(Book book) {
        this.book = book;
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, config.getServletContext());
    }

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

        book.setIsbn(isbn);
        book.setName(name);
        book.setPrice(price);
        service.insert(book);

        PrintWriter out=response.getWriter();

        out.println(isbn);
        out.println(name);
        out.println(author);
        out.println(price);
    }
}
