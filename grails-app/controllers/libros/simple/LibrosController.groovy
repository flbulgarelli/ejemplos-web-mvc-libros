package libros.simple

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


class LibrosController {

  def biblioteca = Biblioteca.instance
 
  def search() {
    [libros: biblioteca.buscar(params.titulo),
     busqueda: params.titulo ]
  }

  def detalle(){
    [libro:biblioteca.getLibro(params.id as int)]
  }
}
