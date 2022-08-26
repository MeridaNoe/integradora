package mx.edu.utez.integradora.service.person;

import mx.edu.utez.integradora.model.usuario.BeanUsuario;
import mx.edu.utez.integradora.model.usuario.DaoUsuario;

import mx.edu.utez.integradora.utils.ResultAction;

import java.util.List;
public class ServicePerson {
    DaoUsuario daoUsuario = new DaoUsuario();

    public List<BeanUsuario> showUsuario(){
        return daoUsuario.showUsuario();
    }


}
