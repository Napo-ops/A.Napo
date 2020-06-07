/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import modelo.Promocion;
import modelo.Usuario;
import org.hibernate.Query;
import org.hibernate.Session;
import utils.HibernateUtil;

/**
 *
 * @author Juan Carlos
 */
public class PromocionDao {
    
    public Promocion getPromocionByCodigo(String codigo){
        Promocion promocion = new Promocion();
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        String hql = "from Promocion where codigo=:codigo";
        Query query = session.createQuery(hql);
        query.setParameter("codigo", codigo);
        promocion = (Promocion)query.uniqueResult();
        return promocion;
        
        
    }
    
    
    
        
    
    
    
    
}
