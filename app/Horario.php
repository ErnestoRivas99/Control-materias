<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Horario extends Model
{
    protected $table = 'horarios';
    public $timestamps = false;

    protected $fillable = [
        'horario',
        'aula',
        'grupo',
    ];

    public function clase(){
        return $this->belongsTo('App\Clase');
    }
}
