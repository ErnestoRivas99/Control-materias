<?php

use Illuminate\Support\Facades\Route;


Route::get('/', 'Auth\LoginController@showLoginForm')->name('login');

Auth::routes();


Route::middleware(['auth'])->group(function(){
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/cursos', 'CursosController@index')->name('alta.cursos');

    Route::post('/altaCurso','CursosController@store')->name('alta.materia');
}); 