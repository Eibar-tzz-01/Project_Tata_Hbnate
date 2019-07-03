package DataBase;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author eibar
 */
public class DBManager {
    private SessionFactory factory = null;
    
    public SessionFactory getSessionFactory() {
        if(this.factory == null) {
            Configuration conf = new AnnotationConfiguration().configure();
            this.factory = conf.buildSessionFactory();
        }
        
        return this.factory;
    }
}
