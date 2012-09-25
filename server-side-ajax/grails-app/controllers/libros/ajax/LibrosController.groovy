package libros.ajax


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
