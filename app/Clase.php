<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clase extends Model
{
    protected $table = 'clases';
    public $timestamps = false;

    protected $fillable = [
        'clave_mtro',
        'clave_carrera',
        'materias_id',
        'dias_id',
        'horarios_id',
    ];

    public function materia(){
        return $this->belongsTo('App\Materia', 'materias_id');
    }

    public function horarios(){
        return $this->belongsTo('App\Horario', 'horarios_id');
    }

    public function dias(){
        return $this->belongsTo('App\Dia', 'dias_id');
    }
}
