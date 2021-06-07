import com.zut.service.SaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

@ContextConfiguration("classpath*:database-context.xml")
public class TransactionalTest extends AbstractTestNGSpringContextTests {
    @Autowired
    private SaleService service;

    @Test
    @Rollback(false)
    public void transTest() {
        service.onSale(0.5f);
    }
}
