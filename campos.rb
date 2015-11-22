campos= [
  id, id, integer,
"ID", id_inegi, integer,
"Nombre de la Unidad Económica",nombre_unidad_economica, string,
"Razón social", razon_social, string
"Código de la clase de actividad SCIAN", codigo_clase_actividad_scian, integer
"Nombre de clase de la actividad", nombre_clase_actividad, string
"Descripcion estrato personal ocupado", descripcion_estrato_personal, string
"Tipo de vialidad", tipo_vialidad, string
"Nombre de la vialidad", nombre_vialidad, string
"Tipo de entre vialidad 1", tipo_entre_vialidad_1, string
"Nombre de entre vialidad 1", nombre_entre_vialidad_1, string
"Tipo de entre vialidad 2", tipo_entre_vialidad_2, string
"Nombre de entre vialidad 2", nombre_entre_vialidad_2, string
"Tipo de entre vialidad 3", tipo_entre_vialidad_3, string
"Nombre de entre vialidad 3", nombre_entre_vialidad_3, string
"Número exterior o kilómetro", numero_exterior_km, string
"Letra exterior", letra_exterior, string
"Edificio", edificio, string
"Edificio Piso", piso, string
"Número interior", numero_interior, string
"Letra interior", letra_interior, string
"Tipo de asentamiento humano", tipo_asentamiento_humano, integer
"Nombre de asentamiento humano", nombre_asentamiento_humano, string
"Tipo centro comercial", tipo_centro_comercial, integer
"Corredor, centro o mercado", corredor_industrial_centro_mercado, string
"Número de local", numero_local, integer
"Código Postal", codigo_postal, integer
"Clave entidad", clave_entidad, integer
"Entidad federativa", entidad_federativa, string
"Clave municipio", clave_municipio, integer
"Municipio", municipio, string
"Clave localidad", clave_localidad, integer
"Localidad", localidad, string
"Área geoestadística básica ", area_geoestadistica, integer 
"Manzana", manzana, string
"Número de teléfono", numero_telefono, string
"Correo electrónico", correo_electronico, string
"Sitio en Internet", sitio_internet, string
"Tipo de establecimiento", tipo_establecimiento, string
"Latitud", latitud, numeric
"Longitud", longitud, numeric
"Fecha de incorporación al DENUE", fecha_incorporacion_denue, string
]

campos= [
id_inegi
nombre_unidad_economica
razon_social
codigo_clase_actividad_scian
nombre_clase_actividad
descripcion_estrato_personal
tipo_vialidad
nombre_vialidad
tipo_entre_vialidad_1
nombre_entre_vialidad_1
tipo_entre_vialidad_2
nombre_entre_vialidad_2
tipo_entre_vialidad_3
nombre_entre_vialidad_3
numero_exterior_km
letra_exterior
edificio
piso
numero_interior
letra_interior
tipo_asentamiento_humano
nombre_asentamiento_humano
tipo_centro_comercial
corredor_industrial_centro_mercado
numero_local
codigo_postal
clave_entidad
entidad_federativa
clave_municipio
municipio
clave_localidad
localidad
area_geoestadistica
manzana
numero_telefono
correo_electronico
sitio_internet
sitio_internet
latitud
longitud
fecha_incorporacion_denue
]

campos= [
:id_inegi
:nombre_unidad_economica
:razon_social
:codigo_clase_actividad_scian
:nombre_clase_actividad
:descripcion_estrato_personal
:tipo_vialidad
:nombre_vialidad
:tipo_entre_vialidad_1
:nombre_entre_vialidad_1
:tipo_entre_vialidad_2
:nombre_entre_vialidad_2
:tipo_entre_vialidad_3
:nombre_entre_vialidad_3
:numero_exterior_km
:letra_exterior
:edificio
:piso
:numero_interior
:letra_interior
:tipo_asentamiento_humano
:nombre_asentamiento_humano
:tipo_centro_comercial
:corredor_industrial_centro_mercado
:numero_local
:codigo_postal
:clave_entidad
:entidad_federativa
:clave_municipio
:municipio
:clave_localidad
:localidad
:area_geoestadistica
:manzana
:numero_telefono
:correo_electronico
:sitio_internet
:tipo_establecimiento
:latitud
:longitud
:fecha_incorporacion_denue
]

echo "# inegi" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/sergiokasusky/inegi.git
git push -u origin master