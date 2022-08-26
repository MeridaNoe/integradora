package mx.edu.utez.integradora.service.auth;

import mx.edu.utez.integradora.model.auth.BeanAuth;
import mx.edu.utez.integradora.model.auth.DaoAuth;
import mx.edu.utez.integradora.model.usuario.BeanUsuario;
import mx.edu.utez.integradora.model.usuario.DaoUsuario;
import mx.edu.utez.integradora.utils.ResultAction;

public class ServiceAuth {
    DaoAuth daoAuth = new DaoAuth();
    DaoUsuario daoUsuario = new DaoUsuario();

    public BeanAuth login(String username, String password){
        return daoAuth.login(username, password);
    }

    public boolean verDocente() {
        return daoAuth.verDocente();
    }

    public BeanUsuario datosUsuario(int id){
        return daoUsuario.obtenerUnUsuario(id);
    }

    public ResultAction updatePerson(BeanAuth person) {
        ResultAction resutl =new ResultAction();
        if (daoAuth.updatePerson(person)){
            resutl.setResult(true);
            resutl.setMessage("Usuario Modificado");
            resutl.setStatus(200);
        }else {
            resutl.setResult(false);
            resutl.setMessage("Error al modificar el usuario");
            resutl.setStatus(400);
        }
        return resutl;
    }

    public BeanAuth findUser(Long id) {
        return daoAuth.findUser(id);
    }

    public ResultAction saveUser(BeanAuth user) {
        ResultAction result = new ResultAction<>();
        if (daoAuth.saveUser(user)) {
            result.setResult(true);
            result.setMessage("Usuario registrado");
            result.setStatus(200);
        } else {
            result.setResult(false);
            result.setMessage("Error al registrar el usuario");
            result.setStatus(400);
        }
        return result;
    }

   /* public BeanAuth consultarDatos(int id){
        return daoAuth.consultarDatos(id);
    }*/



}