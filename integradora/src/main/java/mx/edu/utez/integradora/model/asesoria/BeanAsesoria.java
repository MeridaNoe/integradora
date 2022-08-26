package mx.edu.utez.integradora.model.asesoria;

public class BeanAsesoria {
    private int id;
    private String materia;
    private int docente_id;
    private int estudiante_id;
    private String estado;


    public BeanAsesoria(){
    }

    public BeanAsesoria(int id, String materia, int docente_id, int estudiante_id, String estado) {
        this.id = id;
        this.materia = materia;
        this.docente_id = docente_id;
        this.estudiante_id = estudiante_id;
        this.estado = estado;
    }
// DUDA; HABRA ALGUN PROBLEMA QUE TENGAMOS LAS MISMAS VARIABLES EN DOS TABLAS DIFERENTES.
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public int getDocente_id() {
        return docente_id;
    }

    public void setDocente_id(int docente_id) {
        this.docente_id = docente_id;
    }

    public int getEstudiante_id() {
        return estudiante_id;
    }

    public void setEstudiante_id(int estudiante_id) {
        this.estudiante_id = estudiante_id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
