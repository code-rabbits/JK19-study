import com.zut.domain.Book;
import com.zut.service.SaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

import static org.testng.Assert.assertTrue;

@ContextConfiguration("classpath*:database-context.xml")
public class BeanTest extends AbstractTestNGSpringContextTests {
    @Autowired
    private Book book;

    @Autowired
    private SaleService service;

    @Test
    public void beanTest(){
        book.setName("javaee");
        assertTrue(book!=null);
    }

    @Test
    public void insert(){
        book.setIsbn("512");
        book.setName("python");
        book.setPrice(2000);
        service.insert(book);
    }

    @Test
    public void onSale(){
        service.onSale(0.5f);
    }

}
