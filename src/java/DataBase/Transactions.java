package DataBase;

import Model.Persona;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author eibar
 */
public class Transactions {
    DBManager dbm = new DBManager();
    Session session = dbm.getSessionFactory().openSession();
    
    public void alta(Persona persona) {
        Transaction t = session.beginTransaction();
        session.save(persona);
        t.commit();
    }
    
    public Persona busca(int id) {
        String querystr = "FROM Persona WHERE id=" + id;
        Query query = session.createQuery(querystr);
        
        Persona persona = (Persona) query.list().get(0);
        return persona;
    }
    
    public void borra(int id) {
        Transaction tsec = session.beginTransaction();
        
        Persona ps = new Persona(); 
        ps.setId(id);
        session.delete(ps);
        tsec.commit();
    }
    
    public List<Persona> lista() {
        List<Persona> ls = new ArrayList<>();
        
        Query secquery = session.createQuery("FROM Persona");
        ls = secquery.list();
        
        return ls;
    }
}
