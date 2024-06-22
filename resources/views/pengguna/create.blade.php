@extends('style.master')

@section('content')
<div class="container" style="background-color: #f0f0f0;">
    <div class="container">
    
    <h1>create data pengguna</h1>
    <form action="/pengguna/store" method="POST">
        <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label">NAMA</label>
            <div class="col-sm-10">
                <input type="text" name = "nama" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="text" name = "email" class="form-control" id="inputPassword3">
            </div>
        </div>
       <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat</label>
            <div class="col-sm-10">
                <input type="text" name = "alamat" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label">NoHP</label>
            <div class="col-sm-10">
                <input type="text" name = "nohp" class="form-control" id="inputPassword3">
            </div>
        </div>
        @csrf
        <input type="submit" name="submit" class = "btn btn-info" value="save"><br>
    </form>
    </div>
   
@endsection