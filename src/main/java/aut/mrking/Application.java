package aut.mrking;

import java.io.InputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import aut.mrking.business.ImportExcelDataBusiness;

@SpringBootApplication
public class Application implements InitializingBean {
    @Autowired
    private ImportExcelDataBusiness importExcelDataBusiness;

    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        logger.debug("Start import......................");
        InputStream is = this.getClass().getClassLoader().getResource("init-data/danh-muc.xls").openStream();
        importExcelDataBusiness.importData(is);
        is.close();
    }

}
