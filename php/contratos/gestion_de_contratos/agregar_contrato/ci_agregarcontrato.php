<?php
require_once('comunes/cache_form_ml.php');
require_once('comunes/cache_form.php');
require_once('comunes/mensajes_error.php');

class ci_agregarcontrato extends sagep_ci
{
	//-----------------------------------------------------------------------------------
	//---- setters y getters ------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	// getter form_ml_cache

	function get_cache_form_ml($nombre_ml)
	{
		if (!isset($this->s__datos[$nombre_ml])) {
			$this->s__datos[$nombre_ml] = new cache_form_ml();
		}
		return $this->s__datos[$nombre_ml];
	}

	// getter form_cache

	function get_cache_form($nombre)
	{
		if (!isset($this->s__datos[$nombre])) {
			$this->s__datos[$nombre] = new cache_form();
		}
		return $this->s__datos[$nombre];
	}

	//-----------------------------------------------------------------------------------
	//---- Variables --------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	protected $s__datos = [];

	//-----------------------------------------------------------------------------------
	//---- Eventos ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function evt__procesar()
	{
		try {
			$this->cn()->guardar();
			$this->evt__cancelar();

		} catch (toba_error_db $e) {
			if (!mensajes_error::$debug) {
				//$this->cn()->reiniciar();
				$sql_state = $e->get_sqlstate();
				mensajes_error::get_mensaje_error($sql_state);
				throw $e;
			}
		}
	}

	function evt__cancelar()
	{
		unset($this->s__datos);
		$this->cn()->reiniciar();
		$this->controlador()->set_pantalla('pant_inicial');
	}

	//-----------------------------------------------------------------------------------
	//---- Form -------------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__form(sagep_ei_formulario $form)
	{
		$cache_form = $this->get_cache_form('form');
		$datos = $cache_form->get_cache();
		$form->set_datos($datos);

		$form->ef('fecha_inicio')->set_estado_defecto(date('d/m/Y'));
		$form->ef('fecha_fin')->set_estado_defecto(date('10/01/2019'));
	}

	function evt__form__modificacion($datos)
	{
		$this->get_cache_form('form')->set_cache($datos);
		$this->cn()->set_contratos($datos);
	}

	//-----------------------------------------------------------------------------------
	//---- form_ml_roles ----------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__form_ml_roles(sagep_ei_formulario_ml $form_ml)
	{
		$array_contratante= [];

		$cache_ml_roles = $this->get_cache_form_ml('form_ml_roles');
		$datos = $cache_ml_roles->get_cache();
		if($datos){
			$form_ml->set_datos($datos);
		} else {

			$array_contratante[] = ['id_persona' => 14
		                   ,'id_rol' => 1
											];


			$form_ml->set_datos_defecto($array_contratante);
			//$form_ml->set_registro_nuevo($array_contratante);
			$form_ml->set_registro_nuevo();
		}

	}

	function evt__form_ml_roles__modificacion($datos)
	{
		foreach ($datos as $key => $value) {
			$datos[$key]['apex_ei_analisis_fila'] = 'A';
		}
		
		$this->cn()->procesar_filas_roles($datos);
		$datos = $this->cn()->get_roles();
		$this->get_cache_form_ml('form_ml_roles')->set_cache($datos);
	}


	function traer_contrato()
	{
		$idContrato = $this->s__datos['form']['id_contrato'];
		return $idContrato;
	}

	function get_detalles()
	{
		$datos = $this->cn()->get_detalle();
		return $datos;
	}

}
?>
