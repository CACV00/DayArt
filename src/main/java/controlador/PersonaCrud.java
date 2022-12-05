
package controlador;
import java.util.List;
import Modelo.NombreCompleto;
import Modelo.Persona;
import Modelo.TipoDocumento;
import Modelo.Usuario;

public interface PersonaCrud {
    public List listarNombreCompleto();
    public List listarPersona();
    public List listarDocumento();
    public List listarUsuarios();
    public List listarEstudiante();
    public List listarNiveles();
    public List listarCatalogoCurso();
    public List listarCursos();
    public List listarInscritos();
    public List listarEstado();
    public List listarPromediosCurso();
    public List listarRol();
    public List listarEvaluaciones();
    public NombreCompleto list(int idPersona);
    public boolean addNombreCompleto(NombreCompleto  per );
    public boolean addDocumento(Persona per);
    public boolean addUsuario(Usuario user);
    public boolean edit(NombreCompleto per );
    public boolean eliminar(int idPersona);
    public Usuario validar (Usuario user);
}
