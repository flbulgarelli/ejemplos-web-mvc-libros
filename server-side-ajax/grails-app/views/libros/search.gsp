<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8" />
		<title>Busqueda de libros - ajax</title>
		<link rel="stylesheet" type="text/css" href="styles.css" />
		<g:javascript library='jquery' />
		<r:layoutResources/>

		<script language="javascript"><!--
			function cambiarLibro(nuevoId) {
				$.ajax({
					url: "" + nuevoId, 
					complete: function(response) {
						if (response.status == 200) {
							document.getElementById("libro").innerHTML = response.responseText;
				        }
				        else {
				        	alert("No se pudieron obtener los detalles del libro " + id + "\n" + 
				        	      "Por un error: " + response.status + response.statusText);
				        }
			        }
				})			
			}

		--></script>
	</head>

	<body>
		<center>
		<h2>B&uacute;squeda de libros</h2>
		<form method="post" action="search">
			<input type="text" name="titulo" id="titulo" value="${busqueda}" />
			<input type="submit" value="Buscar"/>
		</form>
		
		<h2>Respuestas:</h2>
		<table>
			<tr>
				<th>#</th>
				<th>Nombre</th>
			</tr>
			<g:each in="${libros}" var="libro" >
				<tr>
					<td>${libro.id}</td>
					<td><a href="javascript:cambiarLibro(${libro.id});">${libro.titulo}</a></td>
			    </tr>
			</g:each>
		</table>

		<div id="libro">
		</div>
		<br>
		</center>
		
	</body>
</html>
