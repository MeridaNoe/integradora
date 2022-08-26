package mx.edu.utez.integradora.controller.usuarios;

import mx.edu.utez.integradora.model.usuario.BeanUsuario;
import mx.edu.utez.integradora.model.usuario.DaoUsuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name="sesion", value = "/sesion")

public class ServletSession extends HttpServlet {
    HttpSession session;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "index.jsp";
        String accion = req.getParameter("acccion");

        if(accion.equalsIgnoreCase("login")){
            String correo = req.getParameter("correo");
            String contra = req.getParameter("contra");

            DaoUsuario usuario = new DaoUsuario();
            BeanUsuario user = usuario.iniciarSesion(correo, contra);

            if(user.getId()!=0){
                session = req.getSession(true);
                session.setAttribute("correo", user.getCorreo());
                session.setAttribute("contra", user.getContra());
                session.setAttribute("role", user.getRol());
                req.getRequestDispatcher("/views/estudiante/indexE.jsp").forward(req,resp);
            }else{
                req.getRequestDispatcher(url).forward(req, resp);
            }
        } else if (accion.equalsIgnoreCase("logout")) {
            session = req.getSession(false);
            session.removeAttribute("correo");
            session.removeAttribute("contra");
            session.removeAttribute("role");
            session.invalidate();
            req.getRequestDispatcher(url).forward(req,resp);
        }else{
            req.getRequestDispatcher(url).forward(req,resp);
        }
    }
}
