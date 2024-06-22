@extends('style.master')

@section('content');
    <div class="container">
    <a class="btn btn-secondary" href="/pengguna/create">Add pengguna </a>
        <table class="table">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>NAMA</th>
                <th>email</th>
                <th>alamat</th>
                <th>nohp</th>
                <th>action</th>
            </tr>
        </thead>
        @foreach($pengguna as $p)
            <tr>
                <td>{{$p->id}}</td>
                <td>{{$p->nama}}</td>
                <td>{{$p->email}}</td>
                <td>{{$p->alamat}}</td>
                <td>{{$p->nohp}}</td>
                <td> 
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <a class = "btn btn-warning"href="/pengguna/{{$p->id}}/edit">Edit</a>
                        <form action="/pengguna/{{$p->id}}" method="POST">
                            @csrf
                            @method('delete')
                        <input class="btn btn-danger" type="submit" value="Delete">
                    </div>
                    </form>
                </td>
            </tr>
            @endforeach
        </table>
        <a class="btn btn-primary" href="/pengguna/report">Unduh Laporan PDF</a>
    </div>
@endsection