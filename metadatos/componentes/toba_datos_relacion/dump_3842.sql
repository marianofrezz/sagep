------------------------------------------------------------
--[3842]--  - dr_personas 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 0
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_relacion', --clase
	'30', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'- dr_personas', --nombre
	NULL, --titulo
	NULL, --colapsable
	NULL, --descripcion
	'sagep', --fuente_datos_proyecto
	'sagep', --fuente_datos
	NULL, --solicitud_registrar
	NULL, --solicitud_obj_obs_tipo
	NULL, --solicitud_obj_observacion
	NULL, --parametro_a
	NULL, --parametro_b
	NULL, --parametro_c
	NULL, --parametro_d
	NULL, --parametro_e
	NULL, --parametro_f
	NULL, --usuario
	'2017-06-06 15:03:12', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 0

------------------------------------------------------------
-- apex_objeto_datos_rel
------------------------------------------------------------
INSERT INTO apex_objeto_datos_rel (proyecto, objeto, debug, clave, ap, punto_montaje, ap_clase, ap_archivo, sinc_susp_constraints, sinc_orden_automatico, sinc_lock_optimista) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'0', --debug
	NULL, --clave
	'2', --ap
	'30', --punto_montaje
	NULL, --ap_clase
	NULL, --ap_archivo
	'0', --sinc_susp_constraints
	'1', --sinc_orden_automatico
	'1'  --sinc_lock_optimista
);

------------------------------------------------------------
-- apex_objeto_dependencias
------------------------------------------------------------

--- INICIO Grupo de desarrollo 0
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'sagep', --proyecto
	'2443', --dep_id
	'3842', --objeto_consumidor
	'3845', --objeto_proveedor
	'dt_correos', --identificador
	NULL, --parametros_a
	'', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'1'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'sagep', --proyecto
	'2497', --dep_id
	'3842', --objeto_consumidor
	'3918', --objeto_proveedor
	'dt_cuentas', --identificador
	'', --parametros_a
	'', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'2'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'sagep', --proyecto
	'2441', --dep_id
	'3842', --objeto_consumidor
	'3843', --objeto_proveedor
	'dt_personas', --identificador
	NULL, --parametros_a
	'', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'3'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'sagep', --proyecto
	'2444', --dep_id
	'3842', --objeto_consumidor
	'3846', --objeto_proveedor
	'dt_personas_detalleubicacion', --identificador
	NULL, --parametros_a
	'', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'4'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'sagep', --proyecto
	'2442', --dep_id
	'3842', --objeto_consumidor
	'3844', --objeto_proveedor
	'dt_telefonos', --identificador
	NULL, --parametros_a
	'', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'5'  --orden
);
--- FIN Grupo de desarrollo 0

------------------------------------------------------------
-- apex_objeto_datos_rel_asoc
------------------------------------------------------------

--- INICIO Grupo de desarrollo 0
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'77', --asoc_id
	NULL, --identificador
	'sagep', --padre_proyecto
	'3843', --padre_objeto
	'dt_personas', --padre_id
	NULL, --padre_clave
	'sagep', --hijo_proyecto
	'3844', --hijo_objeto
	'dt_telefonos', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'1'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'78', --asoc_id
	NULL, --identificador
	'sagep', --padre_proyecto
	'3843', --padre_objeto
	'dt_personas', --padre_id
	NULL, --padre_clave
	'sagep', --hijo_proyecto
	'3845', --hijo_objeto
	'dt_correos', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'2'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'79', --asoc_id
	NULL, --identificador
	'sagep', --padre_proyecto
	'3843', --padre_objeto
	'dt_personas', --padre_id
	NULL, --padre_clave
	'sagep', --hijo_proyecto
	'3846', --hijo_objeto
	'dt_personas_detalleubicacion', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'3'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'82', --asoc_id
	NULL, --identificador
	'sagep', --padre_proyecto
	'3843', --padre_objeto
	'dt_personas', --padre_id
	NULL, --padre_clave
	'sagep', --hijo_proyecto
	'3918', --hijo_objeto
	'dt_cuentas', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'4'  --orden
);
--- FIN Grupo de desarrollo 0

------------------------------------------------------------
-- apex_objeto_rel_columnas_asoc
------------------------------------------------------------
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'77', --asoc_id
	'3843', --padre_objeto
	'1633', --padre_clave
	'3844', --hijo_objeto
	'1648'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'78', --asoc_id
	'3843', --padre_objeto
	'1633', --padre_clave
	'3845', --hijo_objeto
	'1652'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'79', --asoc_id
	'3843', --padre_objeto
	'1633', --padre_clave
	'3846', --hijo_objeto
	'1654'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'sagep', --proyecto
	'3842', --objeto
	'82', --asoc_id
	'3843', --padre_objeto
	'1633', --padre_clave
	'3918', --hijo_objeto
	'1742'  --hijo_clave
);
