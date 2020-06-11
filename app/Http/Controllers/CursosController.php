<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Clase;
use App\Curso;
use Auth;

class CursosController extends Controller
{
    public function index(){

        $clases = Clase::get();
        return view('materias', compact('clases'));
    }

    public function store(Request $request){
        
      try{
       
         $curso = Curso::create($request->all());
         return redirect('/home');

      }catch(\Exception $e){
         return abort(500);
      }

    }
}
