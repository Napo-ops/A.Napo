/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;
import org.hibernate.Query;
import org.hibernate.Session;
import utils.HibernateUtil;

/**
 *
 * @author Juan Carlos
 */
public class UsuarioDao {
    
    public Usuario getUsuarioByUsername(String username){
        Usuario usuario = new Usuario();
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        String hql = "from Usuario where username=:username";
        Query query = session.createQuery(hql);
        query.setParameter("username", username);
        usuario = (Usuario)query.uniqueResult();
        return usuario;
    }
        
}
