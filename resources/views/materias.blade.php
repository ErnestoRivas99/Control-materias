@extends('layouts.cursos')

@section('content')
    <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Materias</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ route('home') }}">Inicio</a></li>
              <li class="breadcrumb-item active">Materias</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
       <form action="{{ route('alta.materia') }}" method="POST">
         @csrf
        <div class="row">
            <div class="col-md-12">
             <div class="card">
                <div class="card-header bg-white ">
                  <button class="btn btn-outline-success text-dark float-right">Inscribirse</button>
                </div>
                 <div class="container-fluid mt-2">
                    <div class="row">
                       @foreach ($clases as $clase)
                        <div class="col-md-3">
                          <div class="card text-center text-white bg-dark">
                              <img src="{{ asset('img/book.jpg') }}" class="card-img-top" alt="...">
                              <div class="card-body">
                                <h5>{{ $clase->materia->materia }}</h5>
                                <h6>Horarios</h6>
                                <h6>{{ $clase->dias->dia }}</h6>
                                <h6>{{ $clase->horarios->horario }}</h6>
                                <h6>Aula</h6>
                                <h6>{{ $clase->horarios->aula }}</h6>
                                <h6>Grupo</h6>
                                <h6>{{ $clase->horarios->grupo }}</h6>
                                <input class="position-static" type="checkbox" value="{{ $clase->id }}" name="curso[]">
                                <p class="card-text"><small>Selecione la materia</small></p>
                              </div>
                          </div>
                        </div>
                       @endforeach
                    </div>
                 </div>
             </div>
            </div>
          </div>
       </form>
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection