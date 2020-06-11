<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Materia extends Model
{
    protected $table = 'materias';
    public $timestamps = false;

    protected $fillable = [
        'materia'
    ];

    public function clase(){
        return $this->belongsTo('App\Clase');
    }
}
