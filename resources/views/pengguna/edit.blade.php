@extends('style.master')

@section('content')
    <div class="container">
    <h1>Edit data pengguna</h1>
    <form action="/pengguna/{{$pengguna->id}}" method="POST">
    @method('put')
    @csrf
    <div class="row mb-3">
         <label for="inputEmail3" class="col-sm-2 col-form-label">NAMA</label>
         <div class="col-sm-10">
             <input type="text" name = "nama" class="form-control" id="inputEmail3" value = "{{$pengguna->nama}}">
         </div>
     </div>
     <div class="row mb-3">
         <label for="inputPassword3" class="col-sm-2 col-form-label">Email</label>
         <div class="col-sm-10">
             <input type="text" name = "email" class="form-control" id="inputPassword3" value = "{{$pengguna->email}}">
         </div>
     </div>
    <div class="row mb-3">
         <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat</label>
         <div class="col-sm-10">
             <input type="text" name = "alamat" class="form-control" id="inputEmail3" value="{{$pengguna->alamat}}">
         </div>
     </div>
     <div class="row mb-3">
         <label for="inputPassword3" class="col-sm-2 col-form-label">NoHP</label>
         <div class="col-sm-10">
             <input type="text" name = "nohp" class="form-control" id="inputPassword3" value = "{{$pengguna->nohp}}" >
         </div>
     </div>
     <input type="submit" class = "btn btn-info" name="submit" value="save"><br>
</form>
</div>
@endsection    