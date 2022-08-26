package mx.edu.utez.integradora.model.usuario;

import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoUsuario {
    public List<BeanUsuario> obtenerUsuarios;
    Connection conn;
    PreparedStatement pstm;
    CallableStatement cstn;
    ResultSet rs;



    public List<BeanUsuario> showUsuario(){
        List<BeanUsuario> usuarioList = new ArrayList<>();
        BeanUsuario usuario = null;
        try {
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement("SELECT * FROM usuario;");
            rs = pstm.executeQuery();
            while (rs.next()){
                usuario = new BeanUsuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setTelefono(rs.getString("telefono"));
                usuario.setMatricula(rs.getString("matricula"));
                usuario.setCuatrimestre(rs.getInt("cuatrimestre"));
                usuario.setCarrera(rs.getString("carrera"));
                usuario.setRol(rs.getString("role"));
                usuarioList.add(usuario);
            }
        }catch (SQLException e){
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, "Error Mostrar", e);
        }finally {
            cerrarConn();
        }
        return usuarioList;
    }

    public boolean saveCuenta(BeanUsuario usuario){
        try {
            pstm = conn.prepareStatement("INSERT INTO usuario (nombre, correo, telefono, contra, matricula, cuatrimestre, carrera, role)" +
                    "VALUES (?,?,?,?,?,?,?,?); ");
            pstm.setString(1, usuario.getNombre());
            pstm.setString(2, usuario.getCorreo());
            pstm.setString(3, usuario.getTelefono());
            pstm.setString(4,usuario.getContra());
            pstm.setString(5 , usuario.getMatricula());
            pstm.setInt(6, usuario.getCuatrimestre());
            pstm.setString(7, usuario.getCarrera());
            pstm.setString(8, usuario.getRol());
            return pstm.executeUpdate()==1 ;

        }catch (SQLException e){
            System.out.println(e);
        }
        return false;

    }

    public BeanUsuario obtenerUnUsuario(int id){
        BeanUsuario usuario = null;
        try {
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement("SELECT * FROM usuario WHERE id=?;");
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            while (rs.next()){
                usuario = new BeanUsuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setTelefono(rs.getString("telefono"));
                usuario.setMatricula(rs.getString("matricula"));
                usuario.setCuatrimestre(rs.getInt("cuatrimestre"));
                usuario.setCarrera(rs.getString("carrera"));
                usuario.setRol(rs.getString("role"));
            }
        }catch (SQLException e){
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, "ErrorMostrarUno", e);
        }finally {
            cerrarConn();
        }
        return usuario;
    }

    public BeanUsuario iniciarSesion(String correo, String contra){
        BeanUsuario usuario = null;
        try {
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement("SELECT * FROM usuario WHERE correo=? AND contra=?;");
            pstm.setString(1, correo);
            pstm.setString(2, contra);
            rs = pstm.executeQuery();
            while (rs.next()){
                usuario = new BeanUsuario();
                usuario.setId(rs.getInt("id"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setContra(rs.getString("contra"));
                usuario.setRol(rs.getString("role"));
            }
        }catch (SQLException e){
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, "ErrorIniciarSesion", e);
        }finally {
            cerrarConn();
        }
        return usuario;
    }
    public void cerrarConn(){
        try {
            if(conn != null){
                conn.close();
            }
            if(pstm != null){
                pstm.close();
            }
            if(cstn != null){
                cstn.close();
            }
            if(rs != null){
                rs.close();
            }
        }catch (SQLException e){

        }
    }
}

