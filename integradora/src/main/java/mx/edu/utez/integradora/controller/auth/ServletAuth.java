package mx.edu.utez.integradora.controller.auth;


import mx.edu.utez.integradora.model.auth.BeanAuth;
import mx.edu.utez.integradora.model.usuario.BeanUsuario;
import mx.edu.utez.integradora.service.auth.ServiceAuth;
import mx.edu.utez.integradora.service.person.ServicePerson;
import mx.edu.utez.integradora.utils.ResultAction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.util.List;

@WebServlet(name = "ServletAuth",
        urlPatterns = {
                "/login",
                "/logout",
                "/perfil",
                "/createIndex",
            // ESTO ES LO DE ESTUDIANTE
                "/getPerfil1",
                "/getSolicitar",
                "/getHistorial",
                "/getAs1",
                "/getModificar",
            // ESTO ES LO DE DOCENTE
                "/getAgregar",
                "/getMateriasIm",
                "/getPeticiones",
                "/getAsesoriasIm",
                "/getAsesoriasRe",
                "/getDSM1",
            // ESTO ES LO DE ADMIN
                "/getHistorialD",
                "/getHistorialE",

                "/getNombreD",
                "/getNombreE",

                "/updatePerson",
                "/savePerson"




})

public class ServletAuth extends HttpServlet {
    String action;
    String urlRedirect = "/getPersons";
    HttpSession session;
    ServiceAuth serviceAuth =  new ServiceAuth();
    ServicePerson servicePerson = new ServicePerson();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        action = request.getServletPath();
        switch (action){
            case "/singin":
                urlRedirect="/index.jsp";
                break;
            case "/perfil":
                urlRedirect= "views/estudiante/DSM-CUATRI1/DSMPerfil1.jsp";
                break;

            case "/createIndex":
                request.getRequestDispatcher("WEB-INF/cuenta-index.jsp").forward(request, response);
                break;


            //ESTE ES LO DE ESTUDIANTE
            case "/getPerlfil1":
                List<BeanUsuario> usuarioList = servicePerson.showUsuario();
                //System.out.println(usuarioList.size());
                request.setAttribute("usarioList", usuarioList);
                urlRedirect="/views/estudiante/DSM-CUATRI1/DSMPerfil1.jsp";
                break;
            case "/getSolicitar":
                urlRedirect="/views/estudiante/DSM-CUATRI1/SolicitarAsesoria.jsp";
                break;
            case "/getHistorial":
                urlRedirect= "views/estudiante/DSM-CUATRI1/DSMhistorial1.jsp";
                break;
            case "/getCerrarS":
                urlRedirect="/index.jsp";
                break;
            case "/getAs1":
                urlRedirect= "/views/estudiante/DSM-CUATRI1/AsesoriaCuatri1.jsp";
                break;
            case "/getModificar":
                String id = request.getParameter("id");
                id = (id == null) ? "0" : id;
                try {
                    BeanAuth person = serviceAuth.findUser(Long.parseLong(id));
                    System.out.println(person.getNombre());
                    request.setAttribute("person", person);
                    urlRedirect= "views/estudiante/DSM-CUATRI1/ModificarDatos.jsp";
                }catch (Exception e){
                    urlRedirect="/getPerlfil1";
                }

                break;


            //ESTO ES LO DE DOCENTE
            case "/getAgregar":
                urlRedirect = "/views/docente/Agregar-materia/Cuatrimestres.jsp";
                break;
            case "/getMateriasIm":
                urlRedirect = "/views/docente/Asesorias-Impartidas/Asesorias-Impartidas.jsp";
                break;
            case "/getPeticiones":
                urlRedirect = "/views/docente/Asesorias-Rechazadas/Asesorias-Rechazadas.jsp";
                break;
            case "/getAsesoriasIm":
                urlRedirect = "/views/docente/Materias-Impartiendo/Materias-Impartiendo.jsp";
                break;
            case "/getAsesoriasRe":
                urlRedirect = "/views/docente/Peticiones-Asesoria/Peticiones-Asesoria.jsp";
                break;
            case "/getDSM1":
                urlRedirect = "/views/docente/Agregar-materia/Cuatrimestre1/CARRERAS/DSM1.jsp";
                break;





            //ESTO ES LO DE ADMIN
            case "/getHistorialD":
                break;
            case "/getHistorialE":
                break;



                //get docentes
            case "/getNombreD":
                boolean docenteList = serviceAuth.verDocente();
                request.setAttribute("docenteList", docenteList);
                break;
            default:
                urlRedirect="/index.jsp";
                break;

        }
        request.getRequestDispatcher(urlRedirect).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        action = request.getServletPath();
        switch (action) {
            case "/login":
                System.out.println("entro login servletAuth");
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String role = request.getParameter("role");
                System.out.println(username + " " + password);
                BeanAuth login = serviceAuth.login(username, password);
                if (login != null) {
                    System.out.println(login);
                    System.out.println("LOGIN -> " + login.getCorreo());
                    session = request.getSession();
                    session.setAttribute("login", login);
                   if(login.getRol().equals("E")){
                       urlRedirect = "/perfil";
                   } else if (login.getRol().equals("D")) {
                       urlRedirect = "/getAsesoriasIm";
                   }else if (login.getRol().equals("A")){
                       urlRedirect= "/getHistorialD";
                    }else {
                       urlRedirect = "/login?message=" + URLEncoder.encode(
                               "Ocurrio un error al validar los datos",
                               StandardCharsets.UTF_8.name());
                   }

                } else {
                    urlRedirect = "/login?message=" + URLEncoder.encode(
                            "Usuario y/o contraseña incorrecto",
                            StandardCharsets.UTF_8.name());
                }
                break;


                // crear un nuevo dato
            case "/savePerson":
                System.out.println("ENTRO SAVE_PrESON");
                String nombre = request.getParameter("nombre");
                String correo = request.getParameter("correo");
                String telefono = request.getParameter("telefono");
                String contra= request.getParameter("contra");
                String matricula = request.getParameter("matricula");
                String cuatrimestre =request.getParameter("cuatrimestre");
                String carrera= request.getParameter("carrera");
                String role1= request.getParameter("role");

                System.out.println("mat-> "+matricula);
                System.out.println("tel-> "+telefono);
                System.out.println("cuat-> "+cuatrimestre);
                System.out.println("rol-> "+role1);
                try {
                    BeanAuth person = new BeanAuth();
                    person.setNombre(nombre);
                    person.setCorreo(correo);
                    person.setTelefono(telefono);
                    person.setMatricula(matricula);
                    person.setCuatrimestre(Integer.parseInt(cuatrimestre));
                    person.setCarrera(carrera);
                    person.setRol(role1);
                    person.setContra(contra);

                    ResultAction result = serviceAuth.saveUser(person);
                    urlRedirect= "/login";

                }catch (Exception e){
                    e.printStackTrace();
                }

                break;
            case "/updatePerson":
                    String nombre2 = request.getParameter("nombre");
                    String correo2 = request.getParameter("correo");
                    String telefono2 = request.getParameter("telefono");
                    String matricula2 = request.getParameter("matricula");
                    int cuatrimestre2 = Integer.parseInt(request.getParameter("cuatrimestre"));
                    String carrera2 = request.getParameter("carrera");

                    BeanAuth person2 = new BeanAuth();
                    person2.setNombre(nombre2);
                    person2.setCorreo(correo2);
                    person2.setTelefono(telefono2);
                    person2.setMatricula(matricula2);
                    person2.setCuatrimestre(cuatrimestre2);
                    person2.setCarrera(carrera2);

                ResultAction result2 = serviceAuth.updatePerson(person2);
                urlRedirect= "/getPerlfil1" +
                result2.isResult() + "&message" + result2.getMessage();

                break;

            default:
                session = request.getSession();
                session.invalidate();
                urlRedirect = "/index.jsp";
                break;
        }
        response.sendRedirect(request.getContextPath()+urlRedirect);
    }
}