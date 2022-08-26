package mx.edu.utez.integradora.model.auth;

import mx.edu.utez.integradora.model.usuario.DaoUsuario;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoAuth {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;

  //  private final String CONSULT_UNIQUE = "SELECT * FROM movies.films  where id = ?";



    private final String GET_LOGIN = "SELECT * FROM usuario WHERE correo = ? AND contra = ?";


    private final String INSERT_USER = "insert into usuario (nombre, correo, telefono, contra, matricula, cuatrimestre, carrera, role)" +
            "VALUES (?,?,?,?,?,?,?,?);";

    private final String INSTER_ASESO = "INSERT INTO `controlasesoria`.`asesoria`(`materia`,`docente_id`,`estudiante_id`,`estado`,`mensaje`)" +
            "VALUES (?,?,?,?,?)";

    private final String FIND_USER = "SELECT * FROM usuario WHERE id = ?";



    private final String SELECT_DOCENTE = "SELECT * FROM usuario WHERE role = 'D'";

    private final String UPDATE_USER = "UPDATE `controlasesoria`.`usuario` SET  `nombre` =?, `correo` = ?, `telefono` = ?, `matricula` =?, `cuatrimestre` = ?, `carrera` = ?" +
            "WHERE `id` = ?;";

    private final String SELECT_ESTUDIANTE = "SELECT nombre, correo, telefono, carrera FROM usuario WHERE role = 'E'";

    public BeanAuth login(String username, String password) {
        System.out.println("us "+username+" pas "+password);
        BeanAuth login = new BeanAuth();
        try {
            conn = new MySQLConnection().connect();
            String query = GET_LOGIN;
            pstm = conn.prepareStatement(query);
            pstm.setString(1, username);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            if (rs.next()) {
                login.setId(rs.getInt("id"));
                login.setNombre(rs.getString("nombre"));
                login.setCorreo(rs.getString("correo"));
                login.setTelefono(rs.getString("telefono"));
                login.setRol(rs.getString("role"));
                return login;
            } else {
                return null;
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoAuth.class.getName())
                    .log(Level.SEVERE, "Error en DaoAuth.login-> " + e);
            return null;
        } finally {
            closeConnections();
        }
    }



    // QUE DIFERENCIA HAY ENTRE ESTOS DOS METODOS INSERT_USER Y CREATE_USER
    private boolean user(String correo, String contra, String rol, long user) {
        try {
            String query = INSERT_USER;
            pstm = conn.prepareStatement(query);
            pstm.setString(1, correo);
            pstm.setString(2, contra);
            pstm.setString(3, rol);
            pstm.setLong(4, user);

            return pstm.executeUpdate()==1;
        }catch (SQLException e){
            Logger.getLogger(DaoUsuario.class.getName())
                    .log(Level.SEVERE, "Error user -> ",e);
            return false;
        }
    }

    public boolean verDocente(){
        List<BeanAuth> docenteList =new LinkedList<>();
        BeanAuth docente = null;
        try {
            conn =  new MySQLConnection().connect();
            String query = SELECT_DOCENTE;
            pstm = conn.prepareStatement(query);
            pstm.setString(1, docente.getNombre());

            docenteList.add(docente);
        }catch (SQLException e) {
            Logger.getLogger(DaoAuth.class.getName())
                    .log(Level.SEVERE, "Error en DaoAuth.login-> " + e);
            return false;
        }
        return false;
    }

    public List<BeanAuth> verEstudiante(){
        List<BeanAuth> estudianteList = new LinkedList<>();
        BeanAuth estudiante = null;
        try {
            conn= new MySQLConnection().connect();
            String query =SELECT_ESTUDIANTE;
            rs = pstm.executeQuery();
            while (rs.next()){
                estudiante =new BeanAuth();
                estudiante.getNombre();
                estudiante.getCorreo();
                estudiante.getCarrera();
                estudianteList.add(estudiante);
            }

        }catch (SQLException e){
            Logger.getLogger(DaoAuth.class.getName())
                    .log(Level.SEVERE, "Error en verEstudiante -> ", e);
        }finally {
            closeConnections();
        }
        return verEstudiante();
    }


    public boolean saveUser(BeanAuth user){
        try {
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement(INSERT_USER);
            pstm.setString(1,user.getNombre());
            pstm.setString(2,user.getCorreo());
            pstm.setString(3,user.getTelefono());
            pstm.setString(4, user.getContra());
            pstm.setString(5, user.getMatricula());
            pstm.setInt(6,user.getCuatrimestre());
            pstm.setString(7, user.getCarrera()); //cambiar por valor
            pstm.setString(8, user.getRol());
             if(pstm.executeUpdate()== 1){

             }else {
                 return false;
             }
        }catch (SQLException e){
            Logger.getLogger(DaoAuth.class.getName())
                    .log(Level.SEVERE, "Error Save User ",e);
            return false;
        }finally {
            closeConnections();
        }
        return false;
    }

  /*  public boolean createAsesoria(BeanAuth aseso){
        try {
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement(INSTER_ASESO);

        }
    }*/


    public BeanAuth findUser(Long id){
        try{
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement(FIND_USER);
            pstm.setLong(1,id);
            rs = pstm.executeQuery();
            while (rs.next()){
                BeanAuth user = new BeanAuth();
                user.setNombre(rs.getString("nombre"));
                user.setCorreo(rs.getString("correo"));
                user.setTelefono(rs.getString("telefono"));
                user.setMatricula(rs.getString("matricula"));
                user.setCuatrimestre(rs.getInt("cuatrimestre"));
                user.setCarrera(rs.getString("carrera"));
                return user;

            }
        }catch (SQLException e){
            Logger.getLogger(DaoAuth.class.getName())
                    .log(Level.SEVERE, "Error en FINDE_USER -> ", e);
        }finally {
            closeConnections();
        }
        return null;
    }

    public boolean updatePerson(BeanAuth person){
        try {
            conn = new MySQLConnection().connect();
            pstm = conn.prepareStatement(UPDATE_USER);

            pstm.setString(1, person.getNombre());
            pstm.setString(2, person.getCorreo());
            pstm.setString(3, person.getTelefono());
            pstm.setString(4, person.getMatricula());
            pstm.setInt(6 , person.getCuatrimestre());
            pstm.setString(5, person.getCarrera());
            return pstm.executeUpdate()==1 ;
        }catch (SQLException e){
            System.out.println(e);
        }

        return false;
    }

    public void closeConnections() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }


}