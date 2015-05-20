<?php

class Medico extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	*/
	protected $table = 'medicos';

	public function getFullNameAttribute()
    {
        return $this->primer_nombre.' '.$this->apellido_paterno;
    }
}

?>
