
package service;

import dao.PromocionDao;

import modelo.Promocion;


public class ValidarPromocion {
    
    
    public Boolean autentificar(String codigo){
        Boolean respuesta;
        PromocionDao dao = new PromocionDao();
        Promocion miCodigo = dao.getPromocionByCodigo(codigo);
        
        if(codigo.equals(miCodigo.getCodigo())){
            respuesta = true;            
        }else{
            respuesta = false;
        }
        return respuesta;
    }
}
