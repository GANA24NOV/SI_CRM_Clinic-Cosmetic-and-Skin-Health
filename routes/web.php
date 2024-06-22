<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PenggunaController; // Menambahkan use statement untuk mengimpor PenggunaController

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/dashboard', function () {
    return view('dashboard');
});
Route::get('/pengguna', [PenggunaController::class, 'index']);
Route::get('/pengguna/create', [PenggunaController::class, 'create']);
Route::post('/pengguna/store', [PenggunaController::class, 'store']);
Route::get('/pengguna/{id}/edit', [PenggunaController::class, 'edit']);
Route::put('/pengguna/{id}', [PenggunaController::class, 'update']);
Route::delete('/pengguna/{id}', [PenggunaController::class, 'destroy']);
//Route::get('/pengguna/report', [PenggunaController::class,'report']);

Route::get('/pengguna/export-pdf', [PenggunaController::class, 'export_pdf'])->name('pengguna.export-pdf');
Route::resource('/pengguna', PenggunaController::class);

// Route::get('/pengguna/export-pdf', [PenggunaController::class, 'export_pdf'])->name('pengguna.export-pdf');
// Route::resource('/pengguna', PenggunaController::class);
// 