import com.zut.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

import static org.testng.Assert.assertTrue;

@ContextConfiguration("classpath*:database-context.xml")
public class BeanTest extends AbstractTestNGSpringContextTests {
    @Autowired
    private Book book;

    @Test
    public void beanTest(){
        book.setName("javaee");
        assertTrue(book!=null);
    }

}
