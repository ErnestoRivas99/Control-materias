<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Curso extends Model
{
    protected $table = 'cursos';

    protected $fillable = [
        'clases_id',
        'users_id'
    ];

    public function user(){
        return $this->hasMany('App\User', 'users_id');
    }

    public function clases(){
        return $this->hasMany('App\Clase', 'clases_id');
    }
}
