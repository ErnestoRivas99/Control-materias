<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dia extends Model
{
    protected $table = 'dias';
    public $timestamps = false;

    protected $fillable = [
        'dia'
    ];

    public function clase(){
        return $this->belongsTo('App\Clase');
    }
}
