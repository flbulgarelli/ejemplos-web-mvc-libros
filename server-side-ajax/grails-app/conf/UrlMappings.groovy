class UrlMappings {

	static mappings = {
    "/libros/search" (controller: 'libros', action: 'search')
    "/libros/$id" (controller: 'libros', action: 'detalle')
    
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
