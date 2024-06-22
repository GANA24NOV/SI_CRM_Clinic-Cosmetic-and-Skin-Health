<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data pengguna</title>

    <style>
        body {
            box-sizing: border-box;
            font-size: 16px;
        }
        h1 {
            text-align: center;
        }
        table {
            box-sizing: border-box;
            border: 2px solid black;
            border-collapse: collapse;
            width: 100%;
        }
        thead {
            background-color: #E1AFD1;
            color: white;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            text-align: left;
            padding: 10px;
        }
        .center {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Data pengguna</h1>
    <table align="center">
        <thead>
            <tr>
                <th class="center">No</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Alamat</th>
                <th>NoHP</th>

            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item => $row)
                <tr>
                <td>{{$p->id}}</td>
                <td>{{$p->nama}}</td>
                <td>{{$p->email}}</td>
                <td>{{$p->alamat}}</td>
                <td>{{$p->nohp}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>