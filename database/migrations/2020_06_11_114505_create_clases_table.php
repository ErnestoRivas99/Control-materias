<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clases', function (Blueprint $table) {
            $table->id();
            $table->string('clave_mtro');

            $table->string('clave_carrera');

            $table->unsignedBigInteger('materias_id');
            $table->foreign('materias_id')->references('id')->on('materias');

            $table->unsignedBigInteger('dias_id');
            $table->foreign('dias_id')->references('id')->on('dias');

            $table->unsignedBigInteger('horarios_id');
            $table->foreign('horarios_id')->references('id')->on('horarios');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clases');
    }
}
