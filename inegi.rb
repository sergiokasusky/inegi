require 'csv'
require 'active_record'


#Se conecta al servidor y crea la base de datos
ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :username => "postgres",
    :password => "",
    :database => "inegi",
    :encoding => "utf8"
)

ActiveRecord::Schema.define do
    create_table :units do |table|
        table.column :id_inegi, :string
        table.column :nombre_unidad_economica, :string
        table.column :razon_social, :string
        table.column :codigo_clase_actividad_scian, :integer
        table.column :nombre_clase_actividad, :string
        table.column :descripcion_estrato_personal, :string
        table.column :tipo_vialidad, :string
        table.column :nombre_vialidad, :string
        table.column :tipo_entre_vialidad_1, :string
        table.column :nombre_entre_vialidad_1, :string
        table.column :tipo_entre_vialidad_2, :string
        table.column :nombre_entre_vialidad_2, :string
        table.column :tipo_entre_vialidad_3, :string
        table.column :nombre_entre_vialidad_3, :string
        table.column :numero_exterior_km, :string
        table.column :letra_exterior, :string
        table.column :edificio, :string
        table.column :piso, :string
        table.column :numero_interior, :string
        table.column :letra_interior, :string
        table.column :tipo_asentamiento_humano, :string
        table.column :nombre_asentamiento_humano, :string
        table.column :tipo_centro_comercial, :string
        table.column :corredor_industrial_centro_mercado, :string
        table.column :numero_local, :string
        table.column :codigo_postal, :integer
        table.column :clave_entidad, :integer
        table.column :entidad_federativa, :string
        table.column :clave_municipio, :integer
        table.column :municipio, :string
        table.column :clave_localidad, :string
        table.column :localidad, :string
        table.column :area_geoestadistica, :integer
        table.column :manzana, :string
        table.column :numero_telefono, :string
        table.column :correo_electronico, :string
        table.column :sitio_internet, :string
        table.column :tipo_establecimiento, :string
        table.column :latitud, :numeric, {:precision=>10, :scale=>6}
        table.column :longitud, :numeric, {:precision=>10, :scale=>6}
        table.column :fecha_incorporacion_denue, :string
    end
end

class Unit < ActiveRecord::Base
end


#lee cada renglón del archivo .CSV y asigna los datos a variables según corresponda
CSV.foreach ('prueba.csv') do |row|
  id_inegi= row[0]
  nombre_unidad_economica= row[1]
  razon_social= row[2]
  codigo_clase_actividad_scian= row[3]
  nombre_clase_actividad= row[4]
  descripcion_estrato_personal= row[5]
  tipo_vialidad= row[6]
  nombre_vialidad= row[7]
  tipo_entre_vialidad_1= row[8]
  nombre_entre_vialidad_1= row[9]
  tipo_entre_vialidad_2= row[10]
  nombre_entre_vialidad_2= row[11]
  tipo_entre_vialidad_3= row[12]
  nombre_entre_vialidad_3= row[13]
  numero_exterior_km= row[14]
  letra_exterior= row[15]
  edificio= row[16]
  piso= row[17]
  numero_interior= row[18]
  letra_interior= row[19]
  tipo_asentamiento_humano= row[20]
  nombre_asentamiento_humano= row[21]
  tipo_centro_comercial= row[22]
  corredor_industrial_centro_mercado= row[23]
  numero_local= row[24]
  codigo_postal= row[25]
  clave_entidad= row[26]
  entidad_federativa= row[27]
  clave_municipio= row[28]
  municipio= row[29]
  clave_localidad= row[30]
  localidad= row[31]
  area_geoestadistica= row[32]
  manzana= row[33]
  numero_telefono= row[34]
  correo_electronico= row[35]
  sitio_internet= row[36]
  tipo_establecimiento= row[37]
  latitud= row[38]
  longitud= row[39]
  fecha_incorporacion_denue= row[40]
  
  #agrega los datos a un registro de la base de datos utilizando las variables creadas
  unit = Unit.create(
  :id_inegi => id_inegi,
  :nombre_unidad_economica => nombre_unidad_economica,
  :razon_social => razon_social,
  :codigo_clase_actividad_scian => codigo_clase_actividad_scian,
  :nombre_clase_actividad => nombre_clase_actividad,
  :descripcion_estrato_personal => descripcion_estrato_personal,
  :tipo_vialidad => tipo_vialidad,
  :nombre_vialidad => nombre_vialidad,
  :tipo_entre_vialidad_1 => tipo_entre_vialidad_1,
  :nombre_entre_vialidad_1 => nombre_entre_vialidad_1,
  :tipo_entre_vialidad_2 => tipo_entre_vialidad_2,
  :nombre_entre_vialidad_2 => nombre_entre_vialidad_2,
  :tipo_entre_vialidad_3 => tipo_entre_vialidad_3,
  :nombre_entre_vialidad_3 => nombre_entre_vialidad_3,
  :numero_exterior_km => numero_exterior_km,
  :letra_exterior => letra_exterior,
  :edificio => edificio,
  :piso => piso,
  :numero_interior => numero_interior,
  :letra_interior => letra_interior,
  :tipo_asentamiento_humano => tipo_asentamiento_humano,
  :nombre_asentamiento_humano => nombre_asentamiento_humano,
  :tipo_centro_comercial => tipo_centro_comercial,
  :corredor_industrial_centro_mercado => corredor_industrial_centro_mercado,
  :numero_local => numero_local,
  :codigo_postal => codigo_postal,
  :clave_entidad => clave_entidad,
  :entidad_federativa => entidad_federativa,
  :clave_municipio => clave_municipio,
  :municipio => municipio,
  :clave_localidad => clave_localidad,
  :localidad => localidad,
  :area_geoestadistica => area_geoestadistica,
  :manzana => manzana,
  :numero_telefono => numero_telefono,
  :correo_electronico => correo_electronico,
  :sitio_internet => sitio_internet,
  :tipo_establecimiento => sitio_internet,
  :latitud => latitud,
  :longitud => longitud,
  :fecha_incorporacion_denue => fecha_incorporacion_denue,
  )  
  
  #Imprime los datos
  puts "************************************"
  puts "ID: " + id_inegi
  puts "Nombre de la Unidad Económica: " + nombre_unidad_economica
  puts "Razón social: " + razon_social.to_s
  puts "Código de la clase de actividad SCIAN: " + codigo_clase_actividad_scian
  puts "Nombre de clase de la actividad: " + nombre_clase_actividad
  puts "Descripcion estrato personal ocupado: " + descripcion_estrato_personal
  puts "Tipo de vialidad: " + tipo_vialidad
  puts "Nombre de la vialidad: " + nombre_vialidad
  puts "Tipo de entre vialidad 1: " + tipo_entre_vialidad_1
  puts "Nombre de entre vialidad 1: " + nombre_entre_vialidad_1
  puts "Tipo de entre vialidad 2: " + tipo_entre_vialidad_2
  puts "Nombre de entre vialidad 2: " + nombre_entre_vialidad_2
  puts "Tipo de entre vialidad 3: " + tipo_entre_vialidad_3.to_s
  puts "Nombre de entre vialidad 3: " + nombre_entre_vialidad_3
  puts "Número exterior o kilómetro: " + numero_exterior_km
  puts "Letra exterior:" + letra_exterior.to_s
  puts "Edificio: " + edificio.to_s
  puts "Edificio Piso: " + piso.to_s
  puts "Número interior: " + numero_interior
  puts "Letra interior: " + letra_interior.to_s
  puts "Tipo de asentamiento humano: " + tipo_asentamiento_humano
  puts "Nombre de asentamiento humano: " + nombre_asentamiento_humano
  puts "Tipo centro comercial: " + tipo_centro_comercial.to_s
  puts "Corredor, centro o mercado: " + corredor_industrial_centro_mercado.to_s
  puts "Número de local: " + numero_local.to_s
  puts "Código Postal: " + codigo_postal
  puts "Clave entidad: " + clave_entidad
  puts "Entidad federativa: " + entidad_federativa
  puts "Clave municipio: " + clave_municipio
  puts "Municipio: " + municipio
  puts "Clave localidad: " + clave_localidad
  puts "Localidad: " + localidad
  puts "Área geoestadística básica: " + area_geoestadistica
  puts "Manzana: " + manzana
  puts "Número de teléfono: " + numero_telefono.to_s
  puts "Correo electrónico: " + correo_electronico.to_s
  puts "Sitio en Internet: " + sitio_internet.to_s
  puts "Tipo de establecimiento: " + tipo_establecimiento
  puts "Latitud: " + latitud
  puts "Longitud: " + longitud
  puts "Fecha de incorporación al DENUE:" + fecha_incorporacion_denue
  puts "************************************"
end

#puts Unit.find_by_codigo_postal(20287).latitud