<?php

namespace App\Http\Controllers;

use App\Models\Pengguna;
use Illuminate\Http\Request;
use Psy\CodeCleaner\ValidFunctionNamePass;
use PDF;
use Illuminate\Support\Facades\View;
use Dompdf\Dompdf;
use Dompdf\Options;

class PenggunaController extends Controller
{
    public function index(){
        $pengguna = Pengguna::all();
       return view('pengguna.index',compact(['pengguna']));
    }
    public function create()
    {
        return view('pengguna.create');
    }
    public function store(Request $request)
    {
        Pengguna::create($request->except(['_token','submit'])); 
        return redirect('/pengguna');
    }
    public function edit($id)
    {
        $pengguna = Pengguna::find($id);
        return view('pengguna.edit', compact('pengguna'));
    }
    public function update($id, Request $request)
    {
        $pengguna = Pengguna::find($id);
        $pengguna-> update($request->except(['_token','submit']));
        return redirect('/pengguna');
    }
    public function destroy($id)
    {
        $pengguna = Pengguna::find($id);
        $pengguna-> delete();
        return redirect('/pengguna');
    }

    public function export_pdf()
    {
        $pengguna = Pengguna::all(); // Ambil semua data pengguna dari model Pengguna
        // Buat objek Dompdf dengan opsi default
        $pdfOptions = new Options();
        $pdfOptions->set('isHtml5ParserEnabled', true);
        $pdfOptions->set('isRemoteEnabled', true);
        $dompdf = new Dompdf($pdfOptions);

        // Buat tampilan PDF
        $pdfView = view('pengguna.pdf', compact('pengguna'));

        // Muat konten PDF ke Dompdf
        $dompdf->loadHtml($pdfView);

            // Render PDF
        $dompdf->render();

            // Menghasilkan nama file untuk PDF
        $fileName = 'pengguna_' . time() . '.pdf';

            // Mengirimkan respons dengan file PDF
        return $dompdf->stream($fileName);
        }
}
